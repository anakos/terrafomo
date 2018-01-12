-- This module is auto-generated.

{-# LANGUAGE DataKinds              #-}
{-# LANGUAGE DeriveGeneric          #-}
{-# LANGUAGE DuplicateRecordFields  #-}
{-# LANGUAGE FlexibleContexts       #-}
{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
{-# LANGUAGE NoImplicitPrelude      #-}
{-# LANGUAGE OverloadedStrings      #-}
{-# LANGUAGE TemplateHaskell        #-}
{-# LANGUAGE TypeFamilies           #-}
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

import Data.Text (Text)

import GHC.Base     (Eq)
import GHC.Generics (Generic)
import GHC.Show     (Show)

import Terrafomo.Syntax.Attribute (Attr, Computed)

import qualified Terrafomo.Syntax.Provider as Qual
import qualified Terrafomo.Syntax.TH       as TH

{- | The @archive_file@ Archive datasource.

Generates an archive from content, a file, or directory of files.
-}
data FileDataSource = FileDataSource
    { _output_path             :: !(Attr Text)
      {- ^ (Required) The output of the archive file. -}
    , _source                  :: !(Attr Text)
      {- ^ (Optional) Specifies attributes of a single source file to include into the archive. -}
    , _source_content          :: !(Attr Text)
      {- ^ (Optional) Add only this content to the archive with @source_content_filename@ as the filename. -}
    , _source_content_filename :: !(Attr Text)
      {- ^ (Optional) Set this as the filename when using @source_content@ . -}
    , _source_dir              :: !(Attr Text)
      {- ^ (Optional) Package entire contents of this directory into the archive. -}
    , _source_file             :: !(Attr Text)
      {- ^ (Optional) Package this file into the archive. -}
    , _type'                   :: !(Attr Text)
      {- ^ (Required) The type of archive to generate. NOTE: @zip@ is supported. -}
    } deriving (Show, Generic)

type instance Computed FileDataSource
    = '[ '("output_base64sha256", Text)
         {- - The base64-encoded SHA256 checksum of output archive file. -}
      , '("output_md5", Text)
         {- - The MD5 checksum of output archive file. -}
      , '("output_sha", Text)
         {- - The SHA1 checksum of output archive file. -}
      , '("output_size", Text)
         {- - The size of the output archive file. -}
       ]

$(TH.makeDataSource
    "archive_file"
    ''Qual.Provider
    ''FileDataSource)
