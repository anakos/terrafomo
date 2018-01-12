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
-- Module      : Terrafomo.Spotinst.Resource
-- Copyright   : (c) 2017 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.Spotinst.Resource where

import Data.Functor ((<$>))
import Data.Maybe   (catMaybes)
import Data.Text    (Text)

import GHC.Base (Eq, const, ($))
import GHC.Show (Show)

import qualified Terrafomo.Spotinst        as TF
import qualified Terrafomo.Syntax.HCL      as TF
import qualified Terrafomo.Syntax.Resource as TF
import qualified Terrafomo.Syntax.Variable as TF
import qualified Terrafomo.TH              as TF

{- | The @spotinst_aws_group@ Spotinst resource.

Provides a Spotinst AWS group resource.
-}
data AwsGroupResource = AwsGroupResource {
      _capacity             :: !(TF.Argument Text)
    {- ^ (Required) The group capacity. Only a single block is allowed. -}
    , _description          :: !(TF.Argument Text)
    {- ^ (Optional) The group description. -}
    , _elastic_ips          :: !(TF.Argument Text)
    {- ^ (Optional) A list of <http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html> allocation IDs to associate to the group instances. -}
    , _instance_types       :: !(TF.Argument Text)
    {- ^ - The type of instance determines your instance's CPU capacity, memory and storage (e.g., m1.small, c1.xlarge). -}
    , _launch_specification :: !(TF.Argument Text)
    {- ^ (Required) Describes the launch specification for an instance. -}
    , _name                 :: !(TF.Argument Text)
    {- ^ (Optional) The group description. -}
    , _product              :: !(TF.Argument Text)
    {- ^ (Required) Operation system type. -}
    , _strategy             :: !(TF.Argument Text)
    {- ^ (Required) This determines how your group request is fulfilled from the possible On-Demand and Spot pools selected for launch. Only a single block is allowed. -}
    , _tags                 :: !(TF.Argument Text)
    {- ^ (Optional) A mapping of tags to assign to the resource. -}
    } deriving (Show, Eq)

awsGroupResource :: TF.Resource TF.Spotinst AwsGroupResource
awsGroupResource =
    TF.newResource "spotinst_aws_group" $
        AwsGroupResource {
            _capacity = TF.Absent
            , _description = TF.Absent
            , _elastic_ips = TF.Absent
            , _instance_types = TF.Absent
            , _launch_specification = TF.Absent
            , _name = TF.Absent
            , _product = TF.Absent
            , _strategy = TF.Absent
            , _tags = TF.Absent
            }

instance TF.ToHCL AwsGroupResource where
    toHCL AwsGroupResource{..} = TF.arguments
        [ TF.assign "capacity" <$> _capacity
        , TF.assign "description" <$> _description
        , TF.assign "elastic_ips" <$> _elastic_ips
        , TF.assign "instance_types" <$> _instance_types
        , TF.assign "launch_specification" <$> _launch_specification
        , TF.assign "name" <$> _name
        , TF.assign "product" <$> _product
        , TF.assign "strategy" <$> _strategy
        , TF.assign "tags" <$> _tags
        ]

$(TF.makeSchemaLenses
    ''AwsGroupResource
    ''TF.Spotinst
    ''TF.Resource
    'TF.schema)

{- | The @spotinst_healthcheck@ Spotinst resource.

Provides a Spotinst healthcheck resource.
-}
data HealthcheckResource = HealthcheckResource {
      _check       :: !(TF.Argument Text)
    {- ^ (Required) Describes the check to execute. -}
    , _name        :: !(TF.Argument Text)
    {- ^ (Optional) the name of the healthcheck -}
    , _proxy       :: !(TF.Argument Text)
    {- ^ (Required) -}
    , _resource_id :: !(TF.Argument Text)
    {- ^ (Required) The resource to health check -}
    , _threshold   :: !(TF.Argument Text)
    {- ^ (Required) -}
    , _computed_id :: !(TF.Attribute Text)
    {- ^ - The healthcheck ID. -}
    } deriving (Show, Eq)

healthcheckResource :: TF.Resource TF.Spotinst HealthcheckResource
healthcheckResource =
    TF.newResource "spotinst_healthcheck" $
        HealthcheckResource {
            _check = TF.Absent
            , _name = TF.Absent
            , _proxy = TF.Absent
            , _resource_id = TF.Absent
            , _threshold = TF.Absent
            , _computed_id = TF.Computed "id"
            }

instance TF.ToHCL HealthcheckResource where
    toHCL HealthcheckResource{..} = TF.arguments
        [ TF.assign "check" <$> _check
        , TF.assign "name" <$> _name
        , TF.assign "proxy" <$> _proxy
        , TF.assign "resource_id" <$> _resource_id
        , TF.assign "threshold" <$> _threshold
        ]

$(TF.makeSchemaLenses
    ''HealthcheckResource
    ''TF.Spotinst
    ''TF.Resource
    'TF.schema)

{- | The @spotinst_subscription@ Spotinst resource.

Provides a Spotinst subscription resource.
-}
data SubscriptionResource = SubscriptionResource {
      _endpoint    :: !(TF.Argument Text)
    {- ^ (Required) The destination for the request -}
    , _event_type  :: !(TF.Argument Text)
    {- ^ (Required) The events to subscribe to -}
    , _format      :: !(TF.Argument Text)
    {- ^ (Optional) The structure of the payload. -}
    , _protocol    :: !(TF.Argument Text)
    {- ^ (Required) The protocol to use to connect with the instance. Valid values: http, https -}
    , _resource_id :: !(TF.Argument Text)
    {- ^ (Required) The resource to subscribe to -}
    , _computed_id :: !(TF.Attribute Text)
    {- ^ - The subscription ID. -}
    } deriving (Show, Eq)

subscriptionResource :: TF.Resource TF.Spotinst SubscriptionResource
subscriptionResource =
    TF.newResource "spotinst_subscription" $
        SubscriptionResource {
            _endpoint = TF.Absent
            , _event_type = TF.Absent
            , _format = TF.Absent
            , _protocol = TF.Absent
            , _resource_id = TF.Absent
            , _computed_id = TF.Computed "id"
            }

instance TF.ToHCL SubscriptionResource where
    toHCL SubscriptionResource{..} = TF.arguments
        [ TF.assign "endpoint" <$> _endpoint
        , TF.assign "event_type" <$> _event_type
        , TF.assign "format" <$> _format
        , TF.assign "protocol" <$> _protocol
        , TF.assign "resource_id" <$> _resource_id
        ]

$(TF.makeSchemaLenses
    ''SubscriptionResource
    ''TF.Spotinst
    ''TF.Resource
    'TF.schema)