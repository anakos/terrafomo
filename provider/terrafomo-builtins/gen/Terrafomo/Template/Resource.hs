-- This module is auto-generated.

{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE StrictData        #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Terrafomo.Template.Resource
-- Copyright   : (c) 2017-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.Template.Resource
    (
    -- * Resource Datatypes
    -- ** template_cloudinit_config
      CloudinitConfigResource (..)
    , cloudinitConfigResource

    -- ** template_dir
    , DirResource (..)
    , dirResource

    -- ** template_file
    , FileResource (..)
    , fileResource

    ) where

import Data.Functor ((<$>))
import Data.Maybe   (catMaybes)

import GHC.Base (($))

import Terrafomo.Template.Settings

import qualified Data.Hashable               as P
import qualified Data.HashMap.Strict         as P
import qualified Data.List.NonEmpty          as P
import qualified Data.Text                   as P
import qualified GHC.Generics                as P
import qualified Lens.Micro                  as P
import qualified Prelude                     as P
import qualified Terrafomo.Attribute         as TF
import qualified Terrafomo.HCL               as TF
import qualified Terrafomo.Name              as TF
import qualified Terrafomo.Schema            as TF
import qualified Terrafomo.Template.Lens     as P
import qualified Terrafomo.Template.Provider as P
import qualified Terrafomo.Template.Types    as P

-- | @template_cloudinit_config@ Resource.
--
-- See the <https://www.terraform.io/docs/providers/Template/template_cloudinit_config terraform documentation>
-- for more information.
data CloudinitConfigResource s = CloudinitConfigResource'
    { _base64Encode :: TF.Attr s P.Bool
    -- ^ @base64_encode@ - (Optional)
    --
    , _gzip         :: TF.Attr s P.Bool
    -- ^ @gzip@ - (Optional)
    --
    , _part         :: TF.Attr s [Part s]
    -- ^ @part@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (CloudinitConfigResource s) where
    toObject CloudinitConfigResource'{..} = catMaybes
        [ TF.assign "base64_encode" <$> TF.attribute _base64Encode
        , TF.assign "gzip" <$> TF.attribute _gzip
        , TF.assign "part" <$> TF.attribute _part
        ]

cloudinitConfigResource
    :: TF.Attr s [Part s] -- ^ @part@ - 'P.part'
    -> TF.Resource P.Provider (CloudinitConfigResource s)
cloudinitConfigResource _part =
    TF.newResource "template_cloudinit_config" $
        CloudinitConfigResource'
            { _base64Encode = TF.value P.True
            , _gzip = TF.value P.True
            , _part = _part
            }

instance P.HasBase64Encode (CloudinitConfigResource s) (TF.Attr s P.Bool) where
    base64Encode =
        P.lens (_base64Encode :: CloudinitConfigResource s -> TF.Attr s P.Bool)
               (\s a -> s { _base64Encode = a
                          } :: CloudinitConfigResource s)

instance P.HasGzip (CloudinitConfigResource s) (TF.Attr s P.Bool) where
    gzip =
        P.lens (_gzip :: CloudinitConfigResource s -> TF.Attr s P.Bool)
               (\s a -> s { _gzip = a
                          } :: CloudinitConfigResource s)

instance P.HasPart (CloudinitConfigResource s) (TF.Attr s [Part s]) where
    part =
        P.lens (_part :: CloudinitConfigResource s -> TF.Attr s [Part s])
               (\s a -> s { _part = a
                          } :: CloudinitConfigResource s)

instance s ~ s' => P.HasComputedRendered (TF.Ref s' (CloudinitConfigResource s)) (TF.Attr s P.Text) where
    computedRendered x = TF.compute (TF.refKey x) "rendered"

-- | @template_dir@ Resource.
--
-- See the <https://www.terraform.io/docs/providers/Template/template_dir terraform documentation>
-- for more information.
data DirResource s = DirResource'
    { _destinationDir :: TF.Attr s P.Text
    -- ^ @destination_dir@ - (Required)
    -- Path to the directory where the templated files will be written
    --
    , _sourceDir      :: TF.Attr s P.Text
    -- ^ @source_dir@ - (Required)
    -- Path to the directory where the files to template reside
    --
    , _vars           :: TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))
    -- ^ @vars@ - (Optional)
    -- Variables to substitute
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (DirResource s) where
    toObject DirResource'{..} = catMaybes
        [ TF.assign "destination_dir" <$> TF.attribute _destinationDir
        , TF.assign "source_dir" <$> TF.attribute _sourceDir
        , TF.assign "vars" <$> TF.attribute _vars
        ]

dirResource
    :: TF.Attr s P.Text -- ^ @destination_dir@ - 'P.destinationDir'
    -> TF.Attr s P.Text -- ^ @source_dir@ - 'P.sourceDir'
    -> TF.Resource P.Provider (DirResource s)
dirResource _destinationDir _sourceDir =
    TF.newResource "template_dir" $
        DirResource'
            { _destinationDir = _destinationDir
            , _sourceDir = _sourceDir
            , _vars = TF.Nil
            }

instance P.HasDestinationDir (DirResource s) (TF.Attr s P.Text) where
    destinationDir =
        P.lens (_destinationDir :: DirResource s -> TF.Attr s P.Text)
               (\s a -> s { _destinationDir = a
                          } :: DirResource s)

instance P.HasSourceDir (DirResource s) (TF.Attr s P.Text) where
    sourceDir =
        P.lens (_sourceDir :: DirResource s -> TF.Attr s P.Text)
               (\s a -> s { _sourceDir = a
                          } :: DirResource s)

instance P.HasVars (DirResource s) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    vars =
        P.lens (_vars :: DirResource s -> TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text)))
               (\s a -> s { _vars = a
                          } :: DirResource s)

-- | @template_file@ Resource.
--
-- See the <https://www.terraform.io/docs/providers/Template/template_file terraform documentation>
-- for more information.
data FileResource s = FileResource'
    { _filename :: TF.Attr s P.Text
    -- ^ @filename@ - (Optional)
    -- File to read template from
    --
    -- Conflicts with:
    --
    -- * 'template'
    , _template :: TF.Attr s P.Text
    -- ^ @template@ - (Optional)
    -- Contents of the template
    --
    -- Conflicts with:
    --
    -- * 'filename'
    , _vars     :: TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))
    -- ^ @vars@ - (Optional)
    -- Variables to substitute
    --
    } deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (FileResource s) where
    toObject FileResource'{..} = catMaybes
        [ TF.assign "filename" <$> TF.attribute _filename
        , TF.assign "template" <$> TF.attribute _template
        , TF.assign "vars" <$> TF.attribute _vars
        ]

fileResource
    :: TF.Resource P.Provider (FileResource s)
fileResource =
    TF.newResource "template_file" $
        FileResource'
            { _filename = TF.Nil
            , _template = TF.Nil
            , _vars = TF.Nil
            }

instance P.HasFilename (FileResource s) (TF.Attr s P.Text) where
    filename =
        P.lens (_filename :: FileResource s -> TF.Attr s P.Text)
               (\s a -> s { _filename = a
                          , _template = TF.Nil
                          } :: FileResource s)

instance P.HasTemplate (FileResource s) (TF.Attr s P.Text) where
    template =
        P.lens (_template :: FileResource s -> TF.Attr s P.Text)
               (\s a -> s { _template = a
                          , _filename = TF.Nil
                          } :: FileResource s)

instance P.HasVars (FileResource s) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    vars =
        P.lens (_vars :: FileResource s -> TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text)))
               (\s a -> s { _vars = a
                          } :: FileResource s)

instance s ~ s' => P.HasComputedRendered (TF.Ref s' (FileResource s)) (TF.Attr s P.Text) where
    computedRendered x = TF.compute (TF.refKey x) "rendered"
