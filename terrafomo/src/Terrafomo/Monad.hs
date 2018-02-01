{-# LANGUAGE DataKinds                  #-}

{-# LANGUAGE DefaultSignatures          #-}
{-# LANGUAGE DeriveFunctor              #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE FunctionalDependencies     #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase                 #-}
{-# LANGUAGE MultiParamTypeClasses      #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RankNTypes                 #-}
{-# LANGUAGE ScopedTypeVariables        #-}
{-# LANGUAGE TupleSections              #-}
{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE UndecidableInstances       #-}

module Terrafomo.Monad
    (
    -- * Terraform Monad
      TerraformConfig
    , TerraformOutput (..)

    , Terraform
    , runTerraform

    -- * Terraform Monad Class
    , MonadTerraform  (..)

    -- * Errors
    , TerraformError  (..)

    -- * Providers
    , withProvider

    , datasource
    , resource
    , output
    , remote

    -- * Attribute Values
    , computed
    , constant
    , nil
    ) where

import Control.Exception    (Exception)
import Control.Monad        (ap, unless, void)
import Control.Monad.Except (Except)
import Control.Monad.Morph  (MFunctor (hoist))
import Control.Monad.Trans  (MonadTrans (lift))

import Data.Bifunctor  (second)
import Data.Map.Strict (Map)
import Data.Proxy      (Proxy (..))
import Data.Semigroup  (Semigroup)
import Data.Typeable   (Typeable)

import Terrafomo.Attribute
import Terrafomo.Backend
import Terrafomo.DataSource  (DataSource (..))
import Terrafomo.Format      (nformat, (%))
import Terrafomo.Name
import Terrafomo.Output
import Terrafomo.Provider
import Terrafomo.RemoteState
import Terrafomo.Resource    (Resource (..))
import Terrafomo.ValueMap    (ValueMap)

import qualified Data.DList                   as DList
import qualified Data.Map.Strict              as Map
import qualified Data.Text.Lazy               as LText
import qualified Lens.Micro                   as Lens
import qualified Terrafomo.Hash               as Hash
import qualified Terrafomo.HCL                as HCL
import qualified Terrafomo.Meta               as Meta
import qualified Terrafomo.ValueMap           as VMap
import qualified Text.PrettyPrint.Leijen.Text as PP

import qualified Control.Monad.Except as MTL
import qualified Control.Monad.Reader as MTL
import qualified Control.Monad.State  as MTL

import qualified Control.Monad.Trans.Identity      as Trans
import qualified Control.Monad.Trans.Maybe         as Trans
import qualified Control.Monad.Trans.RWS.Lazy      as Lazy
import qualified Control.Monad.Trans.RWS.Strict    as Strict
import qualified Control.Monad.Trans.State.Lazy    as Lazy
import qualified Control.Monad.Trans.State.Strict  as Strict
import qualified Control.Monad.Trans.Writer.Lazy   as Lazy
import qualified Control.Monad.Trans.Writer.Strict as Strict

-- Errors

data TerraformError
    = NonUniqueKey    !Key  !HCL.Value
    | NonUniqueOutput !Name !HCL.Value
      deriving (Eq, Show, Typeable)

instance Exception TerraformError

-- Internal Configuration

newtype TerraformConfig = TerraformConfig
    { aliases :: Map Type Key
    }

-- Internal State

-- | Provides key uniquness invariants and ordering of output statements.
data TerraformState = UnsafeTerraformState
    { backend     :: !(Backend  HCL.Value)
    , providers   :: !(ValueMap Key)
    , remotes     :: !(ValueMap Key)
    , datasources :: !(ValueMap Key)
    , resources   :: !(ValueMap Key)
    , outputs     :: !(ValueMap Name)
    }

renderState :: TerraformState -> LText.Text
renderState s =
      PP.displayT
    . PP.renderPretty 0.4 100
    . HCL.renderHCL
    . DList.toList
    . DList.cons (HCL.toHCL (backend s))
    $ DList.concat
         [ VMap.values (providers   s)
         , VMap.values (remotes     s)
         , VMap.values (datasources s)
         , VMap.values (resources   s)
         , VMap.values (outputs     s)
         ]

-- External Output

newtype TerraformOutput = TerraformOutput [(Name, LText.Text)]
    deriving (Semigroup, Monoid)

outputState :: Name -> TerraformState -> TerraformOutput
outputState name = TerraformOutput . pure . (name,) . renderState

-- Terraform CPS Monad

newtype Terraform s a = Terraform
    { unTerraform
        :: TerraformConfig
        -> TerraformState
        -> Except TerraformError (a, TerraformState)
    } deriving (Functor)

-- Unwrapping

runTerraform
    :: HCL.ToHCL b
    => Backend b
    -> Name -- ^ The unique name of the rendered 'Terraform' block.
    -> (forall s. Terraform s a)
    -> Either TerraformError (a, TerraformOutput)
runTerraform x name m =
    second (outputState name) <$> MTL.runExcept (unTerraform m config state)
  where
    config =
        TerraformConfig
            { aliases = mempty
            }

    state =
        UnsafeTerraformState
            { backend     = HCL.toHCL <$> x
            , providers   = VMap.empty
            , remotes     = VMap.empty
            , datasources = VMap.empty
            , resources   = VMap.empty
            , outputs     = VMap.empty
            }

-- Instances

instance Applicative (Terraform s) where
    pure x = Terraform (\_ w -> pure (x, w))
    {-# INLINEABLE pure #-}

    (<*>) = ap
    {-# INLINEABLE (<*>) #-}

instance Monad (Terraform s) where
    m >>= k = Terraform $ \r w -> do
        (x, w') <- unTerraform m r w
        unTerraform (k x) r w'
    {-# INLINEABLE (>>=) #-}

instance MTL.MonadReader TerraformConfig (Terraform s) where
    ask = Terraform (\r w -> pure (r, w))
    {-# INLINEABLE ask #-}

    local f m = Terraform (\r w -> unTerraform m (f r) w)
    {-# INLINEABLE local #-}

instance MTL.MonadState TerraformState (Terraform s) where
    get = Terraform (\_ w -> pure (w, w))
    {-# INLINEABLE get #-}

    put w = Terraform (\_ _ -> pure ((), w))
    {-# INLINEABLE put #-}

instance MTL.MonadError TerraformError (Terraform s) where
    throwError e = Terraform (\_ _ -> MTL.throwError e)
    {-# INLINEABLE throwError #-}

    catchError m f =
        Terraform $ \r w ->
            unTerraform m r w
                `MTL.catchError` \e ->
                    unTerraform (f e) r w
    {-# INLINEABLE catchError #-}

-- Monad Homomorphism

class Monad m => MonadTerraform s m | m -> s where
    liftTerraform  :: Terraform s a -> m a

    default liftTerraform
        :: ( MonadTrans t
           , MonadTerraform s n
           , t n ~ m
           )
        => Terraform s a
        -> m a
    liftTerraform = lift . liftTerraform
    {-# INLINEABLE liftTerraform #-}

    localTerraform :: (TerraformConfig -> TerraformConfig) -> m a -> m a

    -- | Default instance for any transformer satisfying the 'MFunctor'
    -- constraint, with a 'MonadTerraform' instance for the wrapped monad.
    default localTerraform
        :: ( MFunctor t
           , MonadTerraform s n
           , t n ~ m
           )
        => (TerraformConfig -> TerraformConfig)
        -> m a
        -> m a
    localTerraform f m = hoist (localTerraform f) m
    {-# INLINEABLE localTerraform #-}

instance MonadTerraform s (Terraform s) where
    liftTerraform = id
    {-# INLINEABLE liftTerraform #-}

    localTerraform = MTL.local
    {-# INLINEABLE localTerraform #-}

-- Transformer Instances

instance MonadTerraform s m => MonadTerraform s (Trans.IdentityT m)
instance MonadTerraform s m => MonadTerraform s (Trans.MaybeT    m)
instance MonadTerraform s m => MonadTerraform s (MTL.ExceptT   e m)
instance MonadTerraform s m => MonadTerraform s (MTL.ReaderT   r m)
instance MonadTerraform s m => MonadTerraform s (Strict.StateT s m)
instance MonadTerraform s m => MonadTerraform s (Lazy.StateT   s m)

instance ( MonadTerraform s m
         , Monoid w
         ) => MonadTerraform s (Strict.WriterT w m)

instance ( MonadTerraform s m
         , Monoid w
         ) => MonadTerraform s (Lazy.WriterT w m)

instance ( MonadTerraform s m
         , Monoid w
         ) => MonadTerraform s (Strict.RWST r w s m)

instance ( MonadTerraform s m
         , Monoid w
         ) => MonadTerraform s (Lazy.RWST r w s m)

-- Syntax

-- | Refer to a reference's attribute for which the value will be computed
-- during @terraform apply@.
computed
    :: Lens.SimpleGetter a (Computed s b)
    -> Reference s a
    -> Attribute s n b
computed l (UnsafeReference key x) = Compute key (x Lens.^. l)

-- | Supply a constant Haskell value as an attribute. Equivalent to 'Just'.
constant :: forall n s a. a -> Attribute s n a
constant = Constant

-- | Omit an attribute. Equivalent to 'Nothing'.
nil :: forall n s a. Attribute s n a
nil = Nil

withProvider
    :: forall s m p a.
       ( MonadTerraform s m
       , IsProvider p
       )
    => p
    -> m a
    -> m a
withProvider p m =
    insertProvider (Just p) >>= \case
        Nothing    -> m
        Just alias ->
            flip localTerraform m $ \s ->
                s { aliases =
                      Map.insert (providerType (Proxy :: Proxy p)) alias
                                 (aliases s)
                  }

insertProvider
    :: forall s m p.
       ( MonadTerraform s m
       , IsProvider p
       )
    => Maybe p
    -> m (Maybe Key)
insertProvider = \case
    Nothing ->
        liftTerraform $
            MTL.asks (Map.lookup (providerType (Proxy :: Proxy p)) . aliases)
    Just p  -> do
        let key   = providerKey p
            value = HCL.toHCL p

        Just key <$
            insertValue key value providers (\s w -> w { providers = s })

-- Values

datasource
    :: ( MonadTerraform s m
       , IsProvider p
       , HCL.ToHCL a
       )
    => Name
    -> DataSource p a
    -> m (Reference s a)
datasource name x =
    liftTerraform $ do
        alias <- insertProvider (dataProvider x)

        let key   = Key (dataType x) name
            value = HCL.toHCL (key, Lens.set Meta.provider alias x)

        unique <-
            insertValue key value datasources (\s w -> w { datasources = s })

        unless unique $
            MTL.throwError (NonUniqueKey key value)

        pure $! UnsafeReference key (dataConfig x)

resource
    :: ( MonadTerraform s m
       , IsProvider p
       , HCL.ToHCL a
       )
    => Name
    -> Resource p a
    -> m (Reference s a)
resource name x =
    liftTerraform $ do
        alias <- insertProvider (resourceProvider x)

        let key   = Key (resourceType x) name
            value = HCL.toHCL (key, Lens.set Meta.provider alias x)

        unique <-
            insertValue key value resources (\s w -> w { resources = s })

        unless unique $
            MTL.throwError (NonUniqueKey key value)

        pure $! UnsafeReference key (resourceConfig x)

-- | Emit an output variable to the remote state.
--
-- @
-- output (nformat (freference % "_id") ref) (view R.computedId ref)
-- @
output
    :: ( MonadTerraform s m
       , HCL.ToHCL b
       )
    => Lens.SimpleGetter a (Computed s b)
    -> Reference s a
    -> m (Output b)
output l (UnsafeReference key x) =
    liftTerraform $ do
        b <- MTL.gets backend

        let attr  = x Lens.^. l
            name  = nformat (ftype % "_" % fname % "_" % fname)
                        (keyType key) (keyName key) (computedName attr)
            out   = Output b name (key, computedName attr)
            value = HCL.toHCL out

        unique <-
            insertValue name value outputs (\s w -> w { outputs = s })

        unless unique $
            MTL.throwError (NonUniqueOutput name value)

        pure out

-- | Refer to another block of terraform's output variable, and automagically
-- introduce the appropriate remote state datasource.
remote
    :: forall n s m a.
       MonadTerraform s m
    => Output a
    -> m (Attribute s n a)
remote (Output x name _) =
    liftTerraform $ do
        let hash  = Name (Hash.human x)
            state = newRemoteState hash x
            key   = remoteStateKey state
            value = HCL.toHCL state

        exists <- MTL.gets (VMap.member key . datasources)

        if exists
            then MTL.throwError (NonUniqueKey key value)
            else void (insertValue key value remotes (\s w -> w { remotes = s }))

        pure $! Compute key (Computed name)

insertValue
    :: ( MonadTerraform s m
       , Ord k
       )
    => k
    -- ^ The key.
    -> HCL.Value
    -- ^ The raw HCL value.
    -> (TerraformState -> ValueMap k)
    -- ^ Get the affected value map from the state.
    -> (ValueMap k -> TerraformState -> TerraformState)
    -- ^ Modify the state with the updated value map.
    -> m Bool
insertValue key value state update =
    liftTerraform $ do
        vmap <- MTL.gets state
        case VMap.insert key value vmap of
            Nothing    ->                               pure False
            Just vmap' -> MTL.modify' (update vmap') >> pure True
