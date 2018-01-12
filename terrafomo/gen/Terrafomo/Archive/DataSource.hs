-- This module is auto-generated.

{-# LANGUAGE DuplicateRecordFields  #-}
{-# LANGUAGE FlexibleContexts       #-}
{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
{-# LANGUAGE NoImplicitPrelude      #-}
{-# LANGUAGE OverloadedStrings      #-}
{-# LANGUAGE RecordWildCards        #-}
{-# LANGUAGE TemplateHaskell        #-}
{-# LANGUAGE UndecidableInstances   #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Terrafomo.Archive.DataSource
-- Copyright   : (c) 2017 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.Archive.DataSource where

import Data.Functor ((<$>))
import Data.Maybe   (catMaybes)
import Data.Text    (Text)

import GHC.Base (Eq, const, ($))
import GHC.Show (Show)

import qualified Terrafomo.Syntax.DataSource as TF
import qualified Terrafomo.Syntax.HCL        as TF
import qualified Terrafomo.Syntax.Variable   as TF
import qualified Terrafomo.TH                as TF

{- | The @archive_file@ Archive datasource.

Generates an archive from content, a file, or directory of files.
-}
data FileDataSource = FileDataSource {
      _output_path                  :: !(TF.Argument Text)
    {- ^ (Required) The output of the archive file. -}
    , _source                       :: !(TF.Argument Text)
    {- ^ (Optional) Specifies attributes of a single source file to include into the archive. -}
    , _source_content               :: !(TF.Argument Text)
    {- ^ (Optional) Add only this content to the archive with @source_content_filename@ as the filename. -}
    , _source_content_filename      :: !(TF.Argument Text)
    {- ^ (Optional) Set this as the filename when using @source_content@ . -}
    , _source_dir                   :: !(TF.Argument Text)
    {- ^ (Optional) Package entire contents of this directory into the archive. -}
    , _source_file                  :: !(TF.Argument Text)
    {- ^ (Optional) Package this file into the archive. -}
    , _type'                        :: !(TF.Argument Text)
    {- ^ (Required) The type of archive to generate. NOTE: @zip@ is supported. -}
    , _computed_output_base64sha256 :: !(TF.Attribute Text)
    {- ^ - The base64-encoded SHA256 checksum of output archive file. -}
    , _computed_output_md5          :: !(TF.Attribute Text)
    {- ^ - The MD5 checksum of output archive file. -}
    , _computed_output_sha          :: !(TF.Attribute Text)
    {- ^ - The SHA1 checksum of output archive file. -}
    , _computed_output_size         :: !(TF.Attribute Text)
    {- ^ - The size of the output archive file. -}
    } deriving (Show, Eq)

fileDataSource :: TF.DataSource TF.Archive FileDataSource
fileDataSource =
    TF.newDataSource "archive_file" $
        FileDataSource {
            _output_path = TF.Absent
            , _source = TF.Absent
            , _source_content = TF.Absent
            , _source_content_filename = TF.Absent
            , _source_dir = TF.Absent
            , _source_file = TF.Absent
            , _type' = TF.Absent
            , _computed_output_base64sha256 = TF.Computed "output_base64sha256"
            , _computed_output_md5 = TF.Computed "output_md5"
            , _computed_output_sha = TF.Computed "output_sha"
            , _computed_output_size = TF.Computed "output_size"
            }

instance TF.ToHCL FileDataSource where
    toHCL FileDataSource{..} = TF.arguments
        [ TF.assign "output_path" <$> _output_path
        , TF.assign "source" <$> _source
        , TF.assign "source_content" <$> _source_content
        , TF.assign "source_content_filename" <$> _source_content_filename
        , TF.assign "source_dir" <$> _source_dir
        , TF.assign "source_file" <$> _source_file
        , TF.assign "type" <$> _type'
        ]

$(TF.makeSchemaLenses
    ''FileDataSource
    ''TF.Provider
    ''TF.DataSource
    'TF.schema)