-- This module is auto-generated.

{-# LANGUAGE DataKinds              #-}
{-# LANGUAGE DeriveGeneric          #-}
{-# LANGUAGE DuplicateRecordFields  #-}
{-# LANGUAGE FlexibleContexts       #-}
{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
{-# LANGUAGE OverloadedStrings      #-}
{-# LANGUAGE TemplateHaskell        #-}
{-# LANGUAGE TypeFamilies           #-}

module Terraform.Triton.DataSource.M01 where

import Data.Text (Text)

import GHC.Generics (Generic)

import Terraform.Triton.Provider (Triton, newDataSource)
import Terraform.Triton.Types
import Terraform.Syntax.Attribute (Attr, Computed)

import qualified Terraform.Syntax.TH as TH

-- | The @triton_network@ Triton datasource.
--
-- The @triton_network@ data source queries the Triton Network API for a network ID based on the name of the network.
data Network_DataSource = Network_DataSource

type instance Computed Network_DataSource
    = '[]

$(TH.makeDataSource
    "triton_network"
    ''Triton
    'newDataSource
    ''Network_DataSource)