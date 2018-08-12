-- This module is auto-generated.

{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE StrictData        #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Terrafomo.Fastly.DataSource
-- Copyright   : (c) 2017-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.Fastly.DataSource
    (
    -- * DataSource Datatypes
    -- ** fastly_ip_ranges
      IpRangesData (..)
    , ipRangesData

    ) where

import Data.Functor ((<$>))
import Data.Maybe   (catMaybes)

import GHC.Base (($))

import Terrafomo.Fastly.Settings

import qualified Data.Hashable             as P
import qualified Data.HashMap.Strict       as P
import qualified Data.List.NonEmpty        as P
import qualified Data.Text                 as P
import qualified GHC.Generics              as P
import qualified Lens.Micro                as P
import qualified Prelude                   as P
import qualified Terrafomo.Attribute       as TF
import qualified Terrafomo.Fastly.Lens     as P
import qualified Terrafomo.Fastly.Provider as P
import qualified Terrafomo.Fastly.Types    as P
import qualified Terrafomo.HCL             as TF
import qualified Terrafomo.Name            as TF
import qualified Terrafomo.Schema          as TF

-- | @fastly_ip_ranges@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/Fastly/fastly_ip_ranges terraform documentation>
-- for more information.
data IpRangesData s = IpRangesData'
    deriving (P.Show, P.Eq, P.Generic)

instance TF.IsObject (IpRangesData s) where
    toObject _ = []

ipRangesData
    :: TF.DataSource P.Provider (IpRangesData s)
ipRangesData =
    TF.newDataSource "fastly_ip_ranges" $
        IpRangesData'

instance s ~ s' => P.HasComputedCidrBlocks (TF.Ref s' (IpRangesData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedCidrBlocks x = TF.compute (TF.refKey x) "cidr_blocks"
