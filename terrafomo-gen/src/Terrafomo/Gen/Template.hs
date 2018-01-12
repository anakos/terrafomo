{-# LANGUAGE DeriveFoldable    #-}
{-# LANGUAGE DeriveFunctor     #-}
{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE LambdaCase        #-}
{-# LANGUAGE NamedFieldPuns    #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TupleSections     #-}

module Terrafomo.Gen.Template where

import Data.Aeson      ((.=))
import Data.Bifunctor  (first, second)
import Data.Map.Strict (Map)
import Data.Text       (Text)

import Terrafomo.Gen.Provider
import Terrafomo.Gen.Schema
import Terrafomo.Gen.Text

import qualified Data.Aeson.Types as JSON
import qualified Data.Foldable    as Fold
import qualified Data.Map.Strict  as Map
import qualified Data.Text        as Text
import qualified Data.Text.Lazy   as LText
import qualified Text.EDE         as EDE

data Templates a = Templates
    { packageTemplate    :: !a
    , providerTemplate   :: !a
    , contentsTemplate   :: !a
    , resourceTemplate   :: !a
    , dataSourceTemplate :: !a
    } deriving (Show, Functor, Foldable, Traversable)

renderPackage
    :: Templates EDE.Template
    -> Provider
    -> Either Text LText.Text
renderPackage tmpls p =
    render (packageTemplate tmpls)
        [ "provider" .= provider_Name p
        , "package"  .= providerPackage p
        ]

renderProvider
    :: Templates EDE.Template
    -> Provider
    -> Schema
    -> Either Text (NS, LText.Text)
renderProvider tmpls p x =
    second (provider_Namespace p,) $ render (providerTemplate tmpls)
        [ "namespace" .= provider_Namespace p
        , "provider"  .= provider_Name p
        , "schema"    .= x
        ]

renderContents
    :: Templates EDE.Template
    -> SchemaType
    -> NS
    -> Map NS [Schema]
    -> Either Text (NS, LText.Text)
renderContents tmpls typ ns xs =
    second (ns,) $ render (contentsTemplate tmpls)
        [ "namespace" .= ns
        , "contents"  .= fmap (map (getTypeName typ)) xs
        ]

renderSchemas
    :: Templates EDE.Template
    -> Provider
    -> SchemaType
    -> Map NS [Schema]
    -> Either Text (Map NS LText.Text)
renderSchemas tmpls p typ = Map.traverseWithKey go
  where
    go ns xs =
        render (getTypeTemplate typ tmpls)
            [ "namespace" .= ns
            , "provider"  .= provider_Name p
            , "schemas"   .= createMap (getTypeName typ) xs
            ]

    createMap :: (Foldable f, Ord k) => (a -> k) -> f a -> Map k a
    createMap f xs = Map.fromList [(f x, x) | x <- Fold.toList xs]

render :: EDE.Template -> [JSON.Pair] -> Either Text LText.Text
render tmpl = first Text.pack . EDE.eitherRender tmpl . EDE.fromPairs

getTypeTemplate :: SchemaType -> Templates a -> a
getTypeTemplate = \case
    Resource   -> resourceTemplate
    DataSource -> dataSourceTemplate

getTypeName :: SchemaType -> Schema -> Text
getTypeName = \case
    Resource   -> resourceName   . schema_Name
    DataSource -> dataSourceName . schema_Name
