-- This module is auto-generated.

{-# LANGUAGE DeriveGeneric #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Terrafomo.InfluxDB.Provider
-- Copyright   : (c) 2017 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.InfluxDB.Provider where

import Data.Hashable (Hashable)
import Data.Text     (Text)

import GHC.Generics (Generic)

import qualified Terrafomo.InfluxDB.Types   as Qual
import qualified Terrafomo.Syntax.Provider  as Qual
import qualified Terrafomo.Syntax.Serialize as Qual

{- | InfluxDB Terraform provider.

The InfluxDB provider allows Terraform to create Databases in
<https://influxdb.com/> . InfluxDB is a database server optimized for
time-series data. The provider configuration block accepts the following
arguments:
-}
data InfluxDB = InfluxDB

instance Hashable InfluxDB

instance Qual.ToValue InfluxDB where
    toValue = Qual.genericToValue
