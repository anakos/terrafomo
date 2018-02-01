-- This module is auto-generated.

{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE DeriveGeneric     #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeFamilies      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Terrafomo.Rancher.Provider
-- Copyright   : (c) 2017 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.Rancher.Provider
    (
    -- * Provider Datatype
      Rancher (..)
    , emptyRancher

    -- * Lenses
    , accessKey
    , apiUrl
    , secretKey
    ) where

import Data.Function      (on)
import Data.Hashable      (Hashable)
import Data.List.NonEmpty (NonEmpty ((:|)))
import Data.Maybe         (catMaybes)
import Data.Proxy         (Proxy (Proxy))
import Data.Text          (Text)

import GHC.Generics (Generic)

import Lens.Micro (Lens', lens)

import qualified Terrafomo.Attribute     as TF
import qualified Terrafomo.HCL           as TF
import qualified Terrafomo.IP            as TF
import qualified Terrafomo.Name          as TF
import qualified Terrafomo.Provider      as TF
import qualified Terrafomo.Rancher.Types as TF

{- | Rancher Terraform provider.

The Rancher provider is used to interact with the resources supported by
Rancher. The provider needs to be configured with the URL of the Rancher
server at minimum and API credentials if access control is enabled on the
server.
-}
data Rancher = Rancher {
      _access_key :: !(Maybe Text)
    {- ^ (Optional) Rancher API access key. It can also be sourced from the @RANCHER_ACCESS_KEY@ environment variable. -}
    , _api_url    :: !(Maybe Text)
    {- ^ (Required) Rancher API url. It must be provided, but it can also be sourced from the @RANCHER_URL@ environment variable. -}
    , _secret_key :: !(Maybe Text)
    {- ^ (Optional) Rancher API access key. It can also be sourced from the @RANCHER_SECRET_KEY@ environment variable. -}
    } deriving (Show, Eq, Generic)

instance Hashable Rancher

instance TF.ToHCL Rancher where
    toHCL x =
        let typ = TF.providerType (Proxy :: Proxy (Rancher))
            key = TF.providerKey x
         in TF.object ("provider" :| [TF.type_ typ]) $ catMaybes
            [ Just $ TF.assign "alias" (TF.toHCL (TF.keyName key))
            , TF.assign "access_key" <$> _access_key x
            , TF.assign "api_url" <$> _api_url x
            , TF.assign "secret_key" <$> _secret_key x
            ]

instance TF.IsProvider Rancher where
    type ProviderType Rancher = "rancher"

emptyRancher :: Rancher
emptyRancher = Rancher {
        _access_key = Nothing
      , _api_url = Nothing
      , _secret_key = Nothing
    }

accessKey :: Lens' Rancher (Maybe Text)
accessKey =
    lens _access_key (\s a -> s { _access_key = a })

apiUrl :: Lens' Rancher (Maybe Text)
apiUrl =
    lens _api_url (\s a -> s { _api_url = a })

secretKey :: Lens' Rancher (Maybe Text)
secretKey =
    lens _secret_key (\s a -> s { _secret_key = a })
