{-# LANGUAGE DataKinds            #-}
{-# LANGUAGE FlexibleContexts     #-}
{-# LANGUAGE FlexibleInstances    #-}
{-# LANGUAGE PolyKinds            #-}
{-# LANGUAGE TemplateHaskell      #-}
{-# LANGUAGE TypeFamilies         #-}
{-# LANGUAGE TypeOperators        #-}
{-# LANGUAGE UndecidableInstances #-}

-- | An attribute dependency of the form:
--
-- > instance = "${aws_instance.example.id}"
--
-- That is, attributes are 'computed' as outputs of a resource or data source.
module Terrafomo.Syntax.Attribute where

import GHC.Generics
import GHC.TypeLits

import Terrafomo.Syntax.Name (Key, Name)

-- Computed "aws_instance.foo.instance_id" :: Attr Text
data Attr a
    = Computed !Key !Name
    | Present  !a
    | Absent
      deriving (Show, Eq)

-- type instance Computed Instance_Resource
--     = '[ '("instance_id", Text)
--        ]
type family Computed a :: [(Symbol, *)]

type family HasAttribute k a :: * where
    HasAttribute k a = GetType a (Computed a) k (Computed a)

type family GetType a as b bs :: * where
    GetType a as k ('(k, v) ': xs) = v
    GetType a as k (x       ': xs) = GetType a as k xs
    GetType a as k '[]             =
        TypeError ( 'Text "Computed attribute "
              ':<>: 'ShowType k
              ':<>: 'Text " does not exist for "
              ':<>: 'ShowType a
              ':<>: 'Text " which supports the following: "
              ':$$: 'ShowType as
                  )

genericAttributes :: (Generic a, GAttributes (Rep a)) => a
genericAttributes = to gAttributes

-- | Obtain a value in the initial state.
--
-- /Note:/ This produces considerably better errors than using 'Data.Default'
-- without the higher-kinded @f@.
class GAttributes f where
    gAttributes :: f a

instance GAttributes U1 where
    gAttributes = U1

instance GAttributes (K1 i (Attr a)) where
    gAttributes = K1 Absent

instance (GAttributes a) => GAttributes (M1 i c a) where
    gAttributes = M1 gAttributes

instance (GAttributes a, GAttributes b) => GAttributes (a :*: b) where
    gAttributes = gAttributes :*: gAttributes
