-- This module is auto-generated.

{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedLists   #-}
{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE StrictData        #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Terrafomo.AWS.DataSource01
-- Copyright   : (c) 2017-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+terrafomo@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Terrafomo.AWS.DataSource01
    (
    -- * DataSource Datatypes
    -- ** aws_acm_certificate
      AcmCertificateData (..)
    , acmCertificateData

    -- ** aws_acmpca_certificate_authority
    , AcmpcaCertificateAuthorityData (..)
    , acmpcaCertificateAuthorityData

    -- ** aws_alb
    , AlbData (..)
    , albData

    -- ** aws_alb_listener
    , AlbListenerData (..)
    , albListenerData

    -- ** aws_alb_target_group
    , AlbTargetGroupData (..)
    , albTargetGroupData

    -- ** aws_ami
    , AmiData (..)
    , amiData

    -- ** aws_ami_ids
    , AmiIdsData (..)
    , amiIdsData

    -- ** aws_api_gateway_rest_api
    , ApiGatewayRestApiData (..)
    , apiGatewayRestApiData

    -- ** aws_arn
    , ArnData (..)
    , arnData

    -- ** aws_autoscaling_groups
    , AutoscalingGroupsData (..)
    , autoscalingGroupsData

    -- ** aws_availability_zone
    , AvailabilityZoneData (..)
    , availabilityZoneData

    -- ** aws_availability_zones
    , AvailabilityZonesData (..)
    , availabilityZonesData

    -- ** aws_batch_compute_environment
    , BatchComputeEnvironmentData (..)
    , batchComputeEnvironmentData

    -- ** aws_batch_job_queue
    , BatchJobQueueData (..)
    , batchJobQueueData

    -- ** aws_billing_service_account
    , BillingServiceAccountData (..)
    , billingServiceAccountData

    -- ** aws_caller_identity
    , CallerIdentityData (..)
    , callerIdentityData

    -- ** aws_canonical_user_id
    , CanonicalUserIdData (..)
    , canonicalUserIdData

    -- ** aws_cloudformation_export
    , CloudformationExportData (..)
    , cloudformationExportData

    -- ** aws_cloudformation_stack
    , CloudformationStackData (..)
    , cloudformationStackData

    -- ** aws_cloudtrail_service_account
    , CloudtrailServiceAccountData (..)
    , cloudtrailServiceAccountData

    -- ** aws_cloudwatch_log_group
    , CloudwatchLogGroupData (..)
    , cloudwatchLogGroupData

    -- ** aws_codecommit_repository
    , CodecommitRepositoryData (..)
    , codecommitRepositoryData

    -- ** aws_cognito_user_pools
    , CognitoUserPoolsData (..)
    , cognitoUserPoolsData

    -- ** aws_db_cluster_snapshot
    , DbClusterSnapshotData (..)
    , dbClusterSnapshotData

    -- ** aws_db_instance
    , DbInstanceData (..)
    , dbInstanceData

    -- ** aws_db_snapshot
    , DbSnapshotData (..)
    , dbSnapshotData

    -- ** aws_dx_gateway
    , DxGatewayData (..)
    , dxGatewayData

    -- ** aws_dynamodb_table
    , DynamodbTableData (..)
    , dynamodbTableData

    -- ** aws_ebs_snapshot
    , EbsSnapshotData (..)
    , ebsSnapshotData

    -- ** aws_ebs_snapshot_ids
    , EbsSnapshotIdsData (..)
    , ebsSnapshotIdsData

    -- ** aws_ebs_volume
    , EbsVolumeData (..)
    , ebsVolumeData

    -- ** aws_ecr_repository
    , EcrRepositoryData (..)
    , ecrRepositoryData

    -- ** aws_ecs_cluster
    , EcsClusterData (..)
    , ecsClusterData

    -- ** aws_ecs_container_definition
    , EcsContainerDefinitionData (..)
    , ecsContainerDefinitionData

    -- ** aws_ecs_service
    , EcsServiceData (..)
    , ecsServiceData

    -- ** aws_ecs_task_definition
    , EcsTaskDefinitionData (..)
    , ecsTaskDefinitionData

    -- ** aws_efs_file_system
    , EfsFileSystemData (..)
    , efsFileSystemData

    -- ** aws_efs_mount_target
    , EfsMountTargetData (..)
    , efsMountTargetData

    -- ** aws_eip
    , EipData (..)
    , eipData

    -- ** aws_eks_cluster
    , EksClusterData (..)
    , eksClusterData

    -- ** aws_elastic_beanstalk_hosted_zone
    , ElasticBeanstalkHostedZoneData (..)
    , elasticBeanstalkHostedZoneData

    -- ** aws_elastic_beanstalk_solution_stack
    , ElasticBeanstalkSolutionStackData (..)
    , elasticBeanstalkSolutionStackData

    -- ** aws_elasticache_cluster
    , ElasticacheClusterData (..)
    , elasticacheClusterData

    -- ** aws_elasticache_replication_group
    , ElasticacheReplicationGroupData (..)
    , elasticacheReplicationGroupData

    -- ** aws_elb
    , ElbData (..)
    , elbData

    -- ** aws_elb_hosted_zone_id
    , ElbHostedZoneIdData (..)
    , elbHostedZoneIdData

    -- ** aws_elb_service_account
    , ElbServiceAccountData (..)
    , elbServiceAccountData

    -- ** aws_glue_script
    , GlueScriptData (..)
    , glueScriptData

    -- ** aws_iam_account_alias
    , IamAccountAliasData (..)
    , iamAccountAliasData

    -- ** aws_iam_group
    , IamGroupData (..)
    , iamGroupData

    -- ** aws_iam_instance_profile
    , IamInstanceProfileData (..)
    , iamInstanceProfileData

    -- ** aws_iam_policy
    , IamPolicyData (..)
    , iamPolicyData

    -- ** aws_iam_policy_document
    , IamPolicyDocumentData (..)
    , iamPolicyDocumentData

    -- ** aws_iam_role
    , IamRoleData (..)
    , iamRoleData

    -- ** aws_iam_server_certificate
    , IamServerCertificateData (..)
    , iamServerCertificateData

    -- ** aws_iam_user
    , IamUserData (..)
    , iamUserData

    -- ** aws_inspector_rules_packages
    , InspectorRulesPackagesData (..)
    , inspectorRulesPackagesData

    -- ** aws_instance
    , InstanceData (..)
    , instanceData

    -- ** aws_instances
    , InstancesData (..)
    , instancesData

    -- ** aws_internet_gateway
    , InternetGatewayData (..)
    , internetGatewayData

    -- ** aws_iot_endpoint
    , IotEndpointData (..)
    , iotEndpointData

    -- ** aws_ip_ranges
    , IpRangesData (..)
    , ipRangesData

    -- ** aws_kinesis_stream
    , KinesisStreamData (..)
    , kinesisStreamData

    -- ** aws_kms_alias
    , KmsAliasData (..)
    , kmsAliasData

    -- ** aws_kms_ciphertext
    , KmsCiphertextData (..)
    , kmsCiphertextData

    -- ** aws_kms_key
    , KmsKeyData (..)
    , kmsKeyData

    -- ** aws_kms_secret
    , KmsSecretData (..)
    , kmsSecretData

    -- ** aws_kms_secrets
    , KmsSecretsData (..)
    , kmsSecretsData

    -- ** aws_lambda_function
    , LambdaFunctionData (..)
    , lambdaFunctionData

    -- ** aws_lambda_invocation
    , LambdaInvocationData (..)
    , lambdaInvocationData

    -- ** aws_launch_configuration
    , LaunchConfigurationData (..)
    , launchConfigurationData

    -- ** aws_lb
    , LbData (..)
    , lbData

    -- ** aws_lb_listener
    , LbListenerData (..)
    , lbListenerData

    -- ** aws_lb_target_group
    , LbTargetGroupData (..)
    , lbTargetGroupData

    -- ** aws_mq_broker
    , MqBrokerData (..)
    , mqBrokerData

    -- ** aws_nat_gateway
    , NatGatewayData (..)
    , natGatewayData

    -- ** aws_network_acls
    , NetworkAclsData (..)
    , networkAclsData

    -- ** aws_network_interface
    , NetworkInterfaceData (..)
    , networkInterfaceData

    -- ** aws_network_interfaces
    , NetworkInterfacesData (..)
    , networkInterfacesData

    -- ** aws_partition
    , PartitionData (..)
    , partitionData

    ) where

import Data.Functor ((<$>))

import GHC.Base (($))

import Terrafomo.AWS.Settings

import qualified Data.Hashable          as P
import qualified Data.HashMap.Strict    as P
import qualified Data.HashMap.Strict    as Map
import qualified Data.List.NonEmpty     as P
import qualified Data.Maybe             as P
import qualified Data.Monoid            as P
import qualified Data.Text              as P
import qualified GHC.Generics           as P
import qualified Lens.Micro             as P
import qualified Prelude                as P
import qualified Terrafomo.Attribute    as TF
import qualified Terrafomo.AWS.Lens     as P
import qualified Terrafomo.AWS.Provider as P
import qualified Terrafomo.AWS.Types    as P
import qualified Terrafomo.HCL          as TF
import qualified Terrafomo.Name         as TF
import qualified Terrafomo.Schema       as TF
import qualified Terrafomo.Validator    as TF

-- | @aws_acm_certificate@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_acm_certificate terraform documentation>
-- for more information.
data AcmCertificateData s = AcmCertificateData'
    { _domain     :: TF.Attr s P.Text
    -- ^ @domain@ - (Required)
    --
    , _mostRecent :: TF.Attr s P.Bool
    -- ^ @most_recent@ - (Optional)
    --
    , _statuses   :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @statuses@ - (Optional)
    --
    , _types      :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @types@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

acmCertificateData
    :: TF.Attr s P.Text -- ^ @domain@ - 'P.domain'
    -> TF.DataSource P.Provider (AcmCertificateData s)
acmCertificateData _domain =
    TF.newDataSource "aws_acm_certificate" TF.validator $
        AcmCertificateData'
            { _domain = _domain
            , _mostRecent = TF.value P.False
            , _statuses = TF.Nil
            , _types = TF.Nil
            }

instance TF.IsObject (AcmCertificateData s) where
    toObject AcmCertificateData'{..} = P.catMaybes
        [ TF.assign "domain" <$> TF.attribute _domain
        , TF.assign "most_recent" <$> TF.attribute _mostRecent
        , TF.assign "statuses" <$> TF.attribute _statuses
        , TF.assign "types" <$> TF.attribute _types
        ]

instance TF.IsValid (AcmCertificateData s) where
    validator = P.mempty

instance P.HasDomain (AcmCertificateData s) (TF.Attr s P.Text) where
    domain =
        P.lens (_domain :: AcmCertificateData s -> TF.Attr s P.Text)
               (\s a -> s { _domain = a } :: AcmCertificateData s)

instance P.HasMostRecent (AcmCertificateData s) (TF.Attr s P.Bool) where
    mostRecent =
        P.lens (_mostRecent :: AcmCertificateData s -> TF.Attr s P.Bool)
               (\s a -> s { _mostRecent = a } :: AcmCertificateData s)

instance P.HasStatuses (AcmCertificateData s) (TF.Attr s [TF.Attr s P.Text]) where
    statuses =
        P.lens (_statuses :: AcmCertificateData s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _statuses = a } :: AcmCertificateData s)

instance P.HasTypes (AcmCertificateData s) (TF.Attr s [TF.Attr s P.Text]) where
    types =
        P.lens (_types :: AcmCertificateData s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _types = a } :: AcmCertificateData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (AcmCertificateData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

-- | @aws_acmpca_certificate_authority@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_acmpca_certificate_authority terraform documentation>
-- for more information.
data AcmpcaCertificateAuthorityData s = AcmpcaCertificateAuthorityData'
    { _arn :: TF.Attr s P.Text
    -- ^ @arn@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

acmpcaCertificateAuthorityData
    :: TF.Attr s P.Text -- ^ @arn@ - 'P.arn'
    -> TF.DataSource P.Provider (AcmpcaCertificateAuthorityData s)
acmpcaCertificateAuthorityData _arn =
    TF.newDataSource "aws_acmpca_certificate_authority" TF.validator $
        AcmpcaCertificateAuthorityData'
            { _arn = _arn
            }

instance TF.IsObject (AcmpcaCertificateAuthorityData s) where
    toObject AcmpcaCertificateAuthorityData'{..} = P.catMaybes
        [ TF.assign "arn" <$> TF.attribute _arn
        ]

instance TF.IsValid (AcmpcaCertificateAuthorityData s) where
    validator = P.mempty

instance P.HasArn (AcmpcaCertificateAuthorityData s) (TF.Attr s P.Text) where
    arn =
        P.lens (_arn :: AcmpcaCertificateAuthorityData s -> TF.Attr s P.Text)
               (\s a -> s { _arn = a } :: AcmpcaCertificateAuthorityData s)

instance s ~ s' => P.HasComputedCertificate (TF.Ref s' (AcmpcaCertificateAuthorityData s)) (TF.Attr s P.Text) where
    computedCertificate x = TF.compute (TF.refKey x) "_computedCertificate"

instance s ~ s' => P.HasComputedCertificateChain (TF.Ref s' (AcmpcaCertificateAuthorityData s)) (TF.Attr s P.Text) where
    computedCertificateChain x = TF.compute (TF.refKey x) "_computedCertificateChain"

instance s ~ s' => P.HasComputedCertificateSigningRequest (TF.Ref s' (AcmpcaCertificateAuthorityData s)) (TF.Attr s P.Text) where
    computedCertificateSigningRequest x = TF.compute (TF.refKey x) "_computedCertificateSigningRequest"

instance s ~ s' => P.HasComputedNotAfter (TF.Ref s' (AcmpcaCertificateAuthorityData s)) (TF.Attr s P.Text) where
    computedNotAfter x = TF.compute (TF.refKey x) "_computedNotAfter"

instance s ~ s' => P.HasComputedNotBefore (TF.Ref s' (AcmpcaCertificateAuthorityData s)) (TF.Attr s P.Text) where
    computedNotBefore x = TF.compute (TF.refKey x) "_computedNotBefore"

instance s ~ s' => P.HasComputedRevocationConfiguration (TF.Ref s' (AcmpcaCertificateAuthorityData s)) (TF.Attr s [TF.Attr s (RevocationConfiguration s)]) where
    computedRevocationConfiguration x = TF.compute (TF.refKey x) "_computedRevocationConfiguration"

instance s ~ s' => P.HasComputedSerial (TF.Ref s' (AcmpcaCertificateAuthorityData s)) (TF.Attr s P.Text) where
    computedSerial x = TF.compute (TF.refKey x) "_computedSerial"

instance s ~ s' => P.HasComputedStatus (TF.Ref s' (AcmpcaCertificateAuthorityData s)) (TF.Attr s P.Text) where
    computedStatus x = TF.compute (TF.refKey x) "_computedStatus"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (AcmpcaCertificateAuthorityData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "_computedTags"

instance s ~ s' => P.HasComputedType (TF.Ref s' (AcmpcaCertificateAuthorityData s)) (TF.Attr s P.Text) where
    computedType x = TF.compute (TF.refKey x) "_computedType"

-- | @aws_alb@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_alb terraform documentation>
-- for more information.
data AlbData s = AlbData'
    deriving (P.Show, P.Eq, P.Generic)

albData
    :: TF.DataSource P.Provider (AlbData s)
albData =
    TF.newDataSource "aws_alb" TF.validator $
        AlbData'

instance TF.IsObject (AlbData s) where
    toObject _ = []

instance TF.IsValid (AlbData s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedAccessLogs (TF.Ref s' (AlbData s)) (TF.Attr s (AccessLogs s)) where
    computedAccessLogs x = TF.compute (TF.refKey x) "_computedAccessLogs"

instance s ~ s' => P.HasComputedArn (TF.Ref s' (AlbData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedArnSuffix (TF.Ref s' (AlbData s)) (TF.Attr s P.Text) where
    computedArnSuffix x = TF.compute (TF.refKey x) "_computedArnSuffix"

instance s ~ s' => P.HasComputedDnsName (TF.Ref s' (AlbData s)) (TF.Attr s P.Text) where
    computedDnsName x = TF.compute (TF.refKey x) "_computedDnsName"

instance s ~ s' => P.HasComputedEnableDeletionProtection (TF.Ref s' (AlbData s)) (TF.Attr s P.Bool) where
    computedEnableDeletionProtection x = TF.compute (TF.refKey x) "_computedEnableDeletionProtection"

instance s ~ s' => P.HasComputedIdleTimeout (TF.Ref s' (AlbData s)) (TF.Attr s P.Integer) where
    computedIdleTimeout x = TF.compute (TF.refKey x) "_computedIdleTimeout"

instance s ~ s' => P.HasComputedInternal (TF.Ref s' (AlbData s)) (TF.Attr s P.Bool) where
    computedInternal x = TF.compute (TF.refKey x) "_computedInternal"

instance s ~ s' => P.HasComputedLoadBalancerType (TF.Ref s' (AlbData s)) (TF.Attr s P.Text) where
    computedLoadBalancerType x = TF.compute (TF.refKey x) "_computedLoadBalancerType"

instance s ~ s' => P.HasComputedName (TF.Ref s' (AlbData s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "_computedName"

instance s ~ s' => P.HasComputedSecurityGroups (TF.Ref s' (AlbData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedSecurityGroups x = TF.compute (TF.refKey x) "_computedSecurityGroups"

instance s ~ s' => P.HasComputedSubnetMapping (TF.Ref s' (AlbData s)) (TF.Attr s [TF.Attr s (SubnetMapping s)]) where
    computedSubnetMapping x = TF.compute (TF.refKey x) "_computedSubnetMapping"

instance s ~ s' => P.HasComputedSubnets (TF.Ref s' (AlbData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedSubnets x = TF.compute (TF.refKey x) "_computedSubnets"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (AlbData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "_computedTags"

instance s ~ s' => P.HasComputedVpcId (TF.Ref s' (AlbData s)) (TF.Attr s P.Text) where
    computedVpcId x = TF.compute (TF.refKey x) "_computedVpcId"

instance s ~ s' => P.HasComputedZoneId (TF.Ref s' (AlbData s)) (TF.Attr s P.Text) where
    computedZoneId x = TF.compute (TF.refKey x) "_computedZoneId"

-- | @aws_alb_listener@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_alb_listener terraform documentation>
-- for more information.
data AlbListenerData s = AlbListenerData'
    deriving (P.Show, P.Eq, P.Generic)

albListenerData
    :: TF.DataSource P.Provider (AlbListenerData s)
albListenerData =
    TF.newDataSource "aws_alb_listener" TF.validator $
        AlbListenerData'

instance TF.IsObject (AlbListenerData s) where
    toObject _ = []

instance TF.IsValid (AlbListenerData s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedArn (TF.Ref s' (AlbListenerData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedCertificateArn (TF.Ref s' (AlbListenerData s)) (TF.Attr s P.Text) where
    computedCertificateArn x = TF.compute (TF.refKey x) "_computedCertificateArn"

instance s ~ s' => P.HasComputedDefaultAction (TF.Ref s' (AlbListenerData s)) (TF.Attr s [TF.Attr s (DefaultAction s)]) where
    computedDefaultAction x = TF.compute (TF.refKey x) "_computedDefaultAction"

instance s ~ s' => P.HasComputedLoadBalancerArn (TF.Ref s' (AlbListenerData s)) (TF.Attr s P.Text) where
    computedLoadBalancerArn x = TF.compute (TF.refKey x) "_computedLoadBalancerArn"

instance s ~ s' => P.HasComputedPort (TF.Ref s' (AlbListenerData s)) (TF.Attr s P.Integer) where
    computedPort x = TF.compute (TF.refKey x) "_computedPort"

instance s ~ s' => P.HasComputedProtocol (TF.Ref s' (AlbListenerData s)) (TF.Attr s P.Text) where
    computedProtocol x = TF.compute (TF.refKey x) "_computedProtocol"

instance s ~ s' => P.HasComputedSslPolicy (TF.Ref s' (AlbListenerData s)) (TF.Attr s P.Text) where
    computedSslPolicy x = TF.compute (TF.refKey x) "_computedSslPolicy"

-- | @aws_alb_target_group@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_alb_target_group terraform documentation>
-- for more information.
data AlbTargetGroupData s = AlbTargetGroupData'
    deriving (P.Show, P.Eq, P.Generic)

albTargetGroupData
    :: TF.DataSource P.Provider (AlbTargetGroupData s)
albTargetGroupData =
    TF.newDataSource "aws_alb_target_group" TF.validator $
        AlbTargetGroupData'

instance TF.IsObject (AlbTargetGroupData s) where
    toObject _ = []

instance TF.IsValid (AlbTargetGroupData s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedArn (TF.Ref s' (AlbTargetGroupData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedArnSuffix (TF.Ref s' (AlbTargetGroupData s)) (TF.Attr s P.Text) where
    computedArnSuffix x = TF.compute (TF.refKey x) "_computedArnSuffix"

instance s ~ s' => P.HasComputedDeregistrationDelay (TF.Ref s' (AlbTargetGroupData s)) (TF.Attr s P.Integer) where
    computedDeregistrationDelay x = TF.compute (TF.refKey x) "_computedDeregistrationDelay"

instance s ~ s' => P.HasComputedHealthCheck (TF.Ref s' (AlbTargetGroupData s)) (TF.Attr s (HealthCheck s)) where
    computedHealthCheck x = TF.compute (TF.refKey x) "_computedHealthCheck"

instance s ~ s' => P.HasComputedName (TF.Ref s' (AlbTargetGroupData s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "_computedName"

instance s ~ s' => P.HasComputedPort (TF.Ref s' (AlbTargetGroupData s)) (TF.Attr s P.Integer) where
    computedPort x = TF.compute (TF.refKey x) "_computedPort"

instance s ~ s' => P.HasComputedProtocol (TF.Ref s' (AlbTargetGroupData s)) (TF.Attr s P.Text) where
    computedProtocol x = TF.compute (TF.refKey x) "_computedProtocol"

instance s ~ s' => P.HasComputedSlowStart (TF.Ref s' (AlbTargetGroupData s)) (TF.Attr s P.Integer) where
    computedSlowStart x = TF.compute (TF.refKey x) "_computedSlowStart"

instance s ~ s' => P.HasComputedStickiness (TF.Ref s' (AlbTargetGroupData s)) (TF.Attr s (Stickiness s)) where
    computedStickiness x = TF.compute (TF.refKey x) "_computedStickiness"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (AlbTargetGroupData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "_computedTags"

instance s ~ s' => P.HasComputedVpcId (TF.Ref s' (AlbTargetGroupData s)) (TF.Attr s P.Text) where
    computedVpcId x = TF.compute (TF.refKey x) "_computedVpcId"

-- | @aws_ami@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_ami terraform documentation>
-- for more information.
data AmiData s = AmiData'
    { _executableUsers :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @executable_users@ - (Optional)
    --
    , _filter          :: TF.Attr s [TF.Attr s (Filter s)]
    -- ^ @filter@ - (Optional)
    --
    , _mostRecent      :: TF.Attr s P.Bool
    -- ^ @most_recent@ - (Optional)
    --
    , _nameRegex       :: TF.Attr s P.Text
    -- ^ @name_regex@ - (Optional)
    --
    , _owners          :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @owners@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

amiData
    :: TF.DataSource P.Provider (AmiData s)
amiData =
    TF.newDataSource "aws_ami" TF.validator $
        AmiData'
            { _executableUsers = TF.Nil
            , _filter = TF.Nil
            , _mostRecent = TF.value P.False
            , _nameRegex = TF.Nil
            , _owners = TF.Nil
            }

instance TF.IsObject (AmiData s) where
    toObject AmiData'{..} = P.catMaybes
        [ TF.assign "executable_users" <$> TF.attribute _executableUsers
        , TF.assign "filter" <$> TF.attribute _filter
        , TF.assign "most_recent" <$> TF.attribute _mostRecent
        , TF.assign "name_regex" <$> TF.attribute _nameRegex
        , TF.assign "owners" <$> TF.attribute _owners
        ]

instance TF.IsValid (AmiData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filter"
                  (_filter
                      :: AmiData s -> TF.Attr s [TF.Attr s (Filter s)])
                  TF.validator

instance P.HasExecutableUsers (AmiData s) (TF.Attr s [TF.Attr s P.Text]) where
    executableUsers =
        P.lens (_executableUsers :: AmiData s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _executableUsers = a } :: AmiData s)

instance P.HasFilter (AmiData s) (TF.Attr s [TF.Attr s (Filter s)]) where
    filter =
        P.lens (_filter :: AmiData s -> TF.Attr s [TF.Attr s (Filter s)])
               (\s a -> s { _filter = a } :: AmiData s)

instance P.HasMostRecent (AmiData s) (TF.Attr s P.Bool) where
    mostRecent =
        P.lens (_mostRecent :: AmiData s -> TF.Attr s P.Bool)
               (\s a -> s { _mostRecent = a } :: AmiData s)

instance P.HasNameRegex (AmiData s) (TF.Attr s P.Text) where
    nameRegex =
        P.lens (_nameRegex :: AmiData s -> TF.Attr s P.Text)
               (\s a -> s { _nameRegex = a } :: AmiData s)

instance P.HasOwners (AmiData s) (TF.Attr s [TF.Attr s P.Text]) where
    owners =
        P.lens (_owners :: AmiData s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _owners = a } :: AmiData s)

instance s ~ s' => P.HasComputedArchitecture (TF.Ref s' (AmiData s)) (TF.Attr s P.Text) where
    computedArchitecture x = TF.compute (TF.refKey x) "_computedArchitecture"

instance s ~ s' => P.HasComputedBlockDeviceMappings (TF.Ref s' (AmiData s)) (TF.Attr s [TF.Attr s (BlockDeviceMappings s)]) where
    computedBlockDeviceMappings x = TF.compute (TF.refKey x) "_computedBlockDeviceMappings"

instance s ~ s' => P.HasComputedCreationDate (TF.Ref s' (AmiData s)) (TF.Attr s P.Text) where
    computedCreationDate x = TF.compute (TF.refKey x) "_computedCreationDate"

instance s ~ s' => P.HasComputedDescription (TF.Ref s' (AmiData s)) (TF.Attr s P.Text) where
    computedDescription x = TF.compute (TF.refKey x) "_computedDescription"

instance s ~ s' => P.HasComputedHypervisor (TF.Ref s' (AmiData s)) (TF.Attr s P.Text) where
    computedHypervisor x = TF.compute (TF.refKey x) "_computedHypervisor"

instance s ~ s' => P.HasComputedImageId (TF.Ref s' (AmiData s)) (TF.Attr s P.Text) where
    computedImageId x = TF.compute (TF.refKey x) "_computedImageId"

instance s ~ s' => P.HasComputedImageLocation (TF.Ref s' (AmiData s)) (TF.Attr s P.Text) where
    computedImageLocation x = TF.compute (TF.refKey x) "_computedImageLocation"

instance s ~ s' => P.HasComputedImageOwnerAlias (TF.Ref s' (AmiData s)) (TF.Attr s P.Text) where
    computedImageOwnerAlias x = TF.compute (TF.refKey x) "_computedImageOwnerAlias"

instance s ~ s' => P.HasComputedImageType (TF.Ref s' (AmiData s)) (TF.Attr s P.Text) where
    computedImageType x = TF.compute (TF.refKey x) "_computedImageType"

instance s ~ s' => P.HasComputedKernelId (TF.Ref s' (AmiData s)) (TF.Attr s P.Text) where
    computedKernelId x = TF.compute (TF.refKey x) "_computedKernelId"

instance s ~ s' => P.HasComputedName (TF.Ref s' (AmiData s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "_computedName"

instance s ~ s' => P.HasComputedOwnerId (TF.Ref s' (AmiData s)) (TF.Attr s P.Text) where
    computedOwnerId x = TF.compute (TF.refKey x) "_computedOwnerId"

instance s ~ s' => P.HasComputedPlatform (TF.Ref s' (AmiData s)) (TF.Attr s P.Text) where
    computedPlatform x = TF.compute (TF.refKey x) "_computedPlatform"

instance s ~ s' => P.HasComputedProductCodes (TF.Ref s' (AmiData s)) (TF.Attr s [TF.Attr s (ProductCodes s)]) where
    computedProductCodes x = TF.compute (TF.refKey x) "_computedProductCodes"

instance s ~ s' => P.HasComputedPublic (TF.Ref s' (AmiData s)) (TF.Attr s P.Bool) where
    computedPublic x = TF.compute (TF.refKey x) "_computedPublic"

instance s ~ s' => P.HasComputedRamdiskId (TF.Ref s' (AmiData s)) (TF.Attr s P.Text) where
    computedRamdiskId x = TF.compute (TF.refKey x) "_computedRamdiskId"

instance s ~ s' => P.HasComputedRootDeviceName (TF.Ref s' (AmiData s)) (TF.Attr s P.Text) where
    computedRootDeviceName x = TF.compute (TF.refKey x) "_computedRootDeviceName"

instance s ~ s' => P.HasComputedRootDeviceType (TF.Ref s' (AmiData s)) (TF.Attr s P.Text) where
    computedRootDeviceType x = TF.compute (TF.refKey x) "_computedRootDeviceType"

instance s ~ s' => P.HasComputedRootSnapshotId (TF.Ref s' (AmiData s)) (TF.Attr s P.Text) where
    computedRootSnapshotId x = TF.compute (TF.refKey x) "_computedRootSnapshotId"

instance s ~ s' => P.HasComputedSriovNetSupport (TF.Ref s' (AmiData s)) (TF.Attr s P.Text) where
    computedSriovNetSupport x = TF.compute (TF.refKey x) "_computedSriovNetSupport"

instance s ~ s' => P.HasComputedState (TF.Ref s' (AmiData s)) (TF.Attr s P.Text) where
    computedState x = TF.compute (TF.refKey x) "_computedState"

instance s ~ s' => P.HasComputedStateReason (TF.Ref s' (AmiData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedStateReason x = TF.compute (TF.refKey x) "_computedStateReason"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (AmiData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "_computedTags"

instance s ~ s' => P.HasComputedVirtualizationType (TF.Ref s' (AmiData s)) (TF.Attr s P.Text) where
    computedVirtualizationType x = TF.compute (TF.refKey x) "_computedVirtualizationType"

-- | @aws_ami_ids@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_ami_ids terraform documentation>
-- for more information.
data AmiIdsData s = AmiIdsData'
    { _executableUsers :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @executable_users@ - (Optional)
    --
    , _filter          :: TF.Attr s [TF.Attr s (Filter s)]
    -- ^ @filter@ - (Optional)
    --
    , _nameRegex       :: TF.Attr s P.Text
    -- ^ @name_regex@ - (Optional)
    --
    , _owners          :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @owners@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

amiIdsData
    :: TF.DataSource P.Provider (AmiIdsData s)
amiIdsData =
    TF.newDataSource "aws_ami_ids" TF.validator $
        AmiIdsData'
            { _executableUsers = TF.Nil
            , _filter = TF.Nil
            , _nameRegex = TF.Nil
            , _owners = TF.Nil
            }

instance TF.IsObject (AmiIdsData s) where
    toObject AmiIdsData'{..} = P.catMaybes
        [ TF.assign "executable_users" <$> TF.attribute _executableUsers
        , TF.assign "filter" <$> TF.attribute _filter
        , TF.assign "name_regex" <$> TF.attribute _nameRegex
        , TF.assign "owners" <$> TF.attribute _owners
        ]

instance TF.IsValid (AmiIdsData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filter"
                  (_filter
                      :: AmiIdsData s -> TF.Attr s [TF.Attr s (Filter s)])
                  TF.validator

instance P.HasExecutableUsers (AmiIdsData s) (TF.Attr s [TF.Attr s P.Text]) where
    executableUsers =
        P.lens (_executableUsers :: AmiIdsData s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _executableUsers = a } :: AmiIdsData s)

instance P.HasFilter (AmiIdsData s) (TF.Attr s [TF.Attr s (Filter s)]) where
    filter =
        P.lens (_filter :: AmiIdsData s -> TF.Attr s [TF.Attr s (Filter s)])
               (\s a -> s { _filter = a } :: AmiIdsData s)

instance P.HasNameRegex (AmiIdsData s) (TF.Attr s P.Text) where
    nameRegex =
        P.lens (_nameRegex :: AmiIdsData s -> TF.Attr s P.Text)
               (\s a -> s { _nameRegex = a } :: AmiIdsData s)

instance P.HasOwners (AmiIdsData s) (TF.Attr s [TF.Attr s P.Text]) where
    owners =
        P.lens (_owners :: AmiIdsData s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _owners = a } :: AmiIdsData s)

instance s ~ s' => P.HasComputedIds (TF.Ref s' (AmiIdsData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedIds x = TF.compute (TF.refKey x) "_computedIds"

-- | @aws_api_gateway_rest_api@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_api_gateway_rest_api terraform documentation>
-- for more information.
data ApiGatewayRestApiData s = ApiGatewayRestApiData'
    { _name :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

apiGatewayRestApiData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.DataSource P.Provider (ApiGatewayRestApiData s)
apiGatewayRestApiData _name =
    TF.newDataSource "aws_api_gateway_rest_api" TF.validator $
        ApiGatewayRestApiData'
            { _name = _name
            }

instance TF.IsObject (ApiGatewayRestApiData s) where
    toObject ApiGatewayRestApiData'{..} = P.catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        ]

instance TF.IsValid (ApiGatewayRestApiData s) where
    validator = P.mempty

instance P.HasName (ApiGatewayRestApiData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: ApiGatewayRestApiData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: ApiGatewayRestApiData s)

instance s ~ s' => P.HasComputedRootResourceId (TF.Ref s' (ApiGatewayRestApiData s)) (TF.Attr s P.Text) where
    computedRootResourceId x = TF.compute (TF.refKey x) "_computedRootResourceId"

-- | @aws_arn@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_arn terraform documentation>
-- for more information.
data ArnData s = ArnData'
    { _arn :: TF.Attr s P.Text
    -- ^ @arn@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

arnData
    :: TF.Attr s P.Text -- ^ @arn@ - 'P.arn'
    -> TF.DataSource P.Provider (ArnData s)
arnData _arn =
    TF.newDataSource "aws_arn" TF.validator $
        ArnData'
            { _arn = _arn
            }

instance TF.IsObject (ArnData s) where
    toObject ArnData'{..} = P.catMaybes
        [ TF.assign "arn" <$> TF.attribute _arn
        ]

instance TF.IsValid (ArnData s) where
    validator = P.mempty

instance P.HasArn (ArnData s) (TF.Attr s P.Text) where
    arn =
        P.lens (_arn :: ArnData s -> TF.Attr s P.Text)
               (\s a -> s { _arn = a } :: ArnData s)

instance s ~ s' => P.HasComputedAccount (TF.Ref s' (ArnData s)) (TF.Attr s P.Text) where
    computedAccount x = TF.compute (TF.refKey x) "_computedAccount"

instance s ~ s' => P.HasComputedPartition (TF.Ref s' (ArnData s)) (TF.Attr s P.Text) where
    computedPartition x = TF.compute (TF.refKey x) "_computedPartition"

instance s ~ s' => P.HasComputedRegion (TF.Ref s' (ArnData s)) (TF.Attr s P.Text) where
    computedRegion x = TF.compute (TF.refKey x) "_computedRegion"

instance s ~ s' => P.HasComputedResource (TF.Ref s' (ArnData s)) (TF.Attr s P.Text) where
    computedResource x = TF.compute (TF.refKey x) "_computedResource"

instance s ~ s' => P.HasComputedService (TF.Ref s' (ArnData s)) (TF.Attr s P.Text) where
    computedService x = TF.compute (TF.refKey x) "_computedService"

-- | @aws_autoscaling_groups@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_autoscaling_groups terraform documentation>
-- for more information.
data AutoscalingGroupsData s = AutoscalingGroupsData'
    { _filter :: TF.Attr s [TF.Attr s (Filter s)]
    -- ^ @filter@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

autoscalingGroupsData
    :: TF.DataSource P.Provider (AutoscalingGroupsData s)
autoscalingGroupsData =
    TF.newDataSource "aws_autoscaling_groups" TF.validator $
        AutoscalingGroupsData'
            { _filter = TF.Nil
            }

instance TF.IsObject (AutoscalingGroupsData s) where
    toObject AutoscalingGroupsData'{..} = P.catMaybes
        [ TF.assign "filter" <$> TF.attribute _filter
        ]

instance TF.IsValid (AutoscalingGroupsData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filter"
                  (_filter
                      :: AutoscalingGroupsData s -> TF.Attr s [TF.Attr s (Filter s)])
                  TF.validator

instance P.HasFilter (AutoscalingGroupsData s) (TF.Attr s [TF.Attr s (Filter s)]) where
    filter =
        P.lens (_filter :: AutoscalingGroupsData s -> TF.Attr s [TF.Attr s (Filter s)])
               (\s a -> s { _filter = a } :: AutoscalingGroupsData s)

instance s ~ s' => P.HasComputedNames (TF.Ref s' (AutoscalingGroupsData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedNames x = TF.compute (TF.refKey x) "_computedNames"

-- | @aws_availability_zone@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_availability_zone terraform documentation>
-- for more information.
data AvailabilityZoneData s = AvailabilityZoneData'
    deriving (P.Show, P.Eq, P.Generic)

availabilityZoneData
    :: TF.DataSource P.Provider (AvailabilityZoneData s)
availabilityZoneData =
    TF.newDataSource "aws_availability_zone" TF.validator $
        AvailabilityZoneData'

instance TF.IsObject (AvailabilityZoneData s) where
    toObject _ = []

instance TF.IsValid (AvailabilityZoneData s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedName (TF.Ref s' (AvailabilityZoneData s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "_computedName"

instance s ~ s' => P.HasComputedNameSuffix (TF.Ref s' (AvailabilityZoneData s)) (TF.Attr s P.Text) where
    computedNameSuffix x = TF.compute (TF.refKey x) "_computedNameSuffix"

instance s ~ s' => P.HasComputedRegion (TF.Ref s' (AvailabilityZoneData s)) (TF.Attr s P.Text) where
    computedRegion x = TF.compute (TF.refKey x) "_computedRegion"

instance s ~ s' => P.HasComputedState (TF.Ref s' (AvailabilityZoneData s)) (TF.Attr s P.Text) where
    computedState x = TF.compute (TF.refKey x) "_computedState"

-- | @aws_availability_zones@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_availability_zones terraform documentation>
-- for more information.
data AvailabilityZonesData s = AvailabilityZonesData'
    { _state :: TF.Attr s P.Text
    -- ^ @state@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

availabilityZonesData
    :: TF.DataSource P.Provider (AvailabilityZonesData s)
availabilityZonesData =
    TF.newDataSource "aws_availability_zones" TF.validator $
        AvailabilityZonesData'
            { _state = TF.Nil
            }

instance TF.IsObject (AvailabilityZonesData s) where
    toObject AvailabilityZonesData'{..} = P.catMaybes
        [ TF.assign "state" <$> TF.attribute _state
        ]

instance TF.IsValid (AvailabilityZonesData s) where
    validator = P.mempty

instance P.HasState (AvailabilityZonesData s) (TF.Attr s P.Text) where
    state =
        P.lens (_state :: AvailabilityZonesData s -> TF.Attr s P.Text)
               (\s a -> s { _state = a } :: AvailabilityZonesData s)

instance s ~ s' => P.HasComputedNames (TF.Ref s' (AvailabilityZonesData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedNames x = TF.compute (TF.refKey x) "_computedNames"

-- | @aws_batch_compute_environment@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_batch_compute_environment terraform documentation>
-- for more information.
data BatchComputeEnvironmentData s = BatchComputeEnvironmentData'
    { _computeEnvironmentName :: TF.Attr s P.Text
    -- ^ @compute_environment_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

batchComputeEnvironmentData
    :: TF.Attr s P.Text -- ^ @compute_environment_name@ - 'P.computeEnvironmentName'
    -> TF.DataSource P.Provider (BatchComputeEnvironmentData s)
batchComputeEnvironmentData _computeEnvironmentName =
    TF.newDataSource "aws_batch_compute_environment" TF.validator $
        BatchComputeEnvironmentData'
            { _computeEnvironmentName = _computeEnvironmentName
            }

instance TF.IsObject (BatchComputeEnvironmentData s) where
    toObject BatchComputeEnvironmentData'{..} = P.catMaybes
        [ TF.assign "compute_environment_name" <$> TF.attribute _computeEnvironmentName
        ]

instance TF.IsValid (BatchComputeEnvironmentData s) where
    validator = P.mempty

instance P.HasComputeEnvironmentName (BatchComputeEnvironmentData s) (TF.Attr s P.Text) where
    computeEnvironmentName =
        P.lens (_computeEnvironmentName :: BatchComputeEnvironmentData s -> TF.Attr s P.Text)
               (\s a -> s { _computeEnvironmentName = a } :: BatchComputeEnvironmentData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (BatchComputeEnvironmentData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedEcsClusterArn (TF.Ref s' (BatchComputeEnvironmentData s)) (TF.Attr s P.Text) where
    computedEcsClusterArn x = TF.compute (TF.refKey x) "_computedEcsClusterArn"

instance s ~ s' => P.HasComputedServiceRole (TF.Ref s' (BatchComputeEnvironmentData s)) (TF.Attr s P.Text) where
    computedServiceRole x = TF.compute (TF.refKey x) "_computedServiceRole"

instance s ~ s' => P.HasComputedState (TF.Ref s' (BatchComputeEnvironmentData s)) (TF.Attr s P.Text) where
    computedState x = TF.compute (TF.refKey x) "_computedState"

instance s ~ s' => P.HasComputedStatus (TF.Ref s' (BatchComputeEnvironmentData s)) (TF.Attr s P.Text) where
    computedStatus x = TF.compute (TF.refKey x) "_computedStatus"

instance s ~ s' => P.HasComputedStatusReason (TF.Ref s' (BatchComputeEnvironmentData s)) (TF.Attr s P.Text) where
    computedStatusReason x = TF.compute (TF.refKey x) "_computedStatusReason"

instance s ~ s' => P.HasComputedType (TF.Ref s' (BatchComputeEnvironmentData s)) (TF.Attr s P.Text) where
    computedType x = TF.compute (TF.refKey x) "_computedType"

-- | @aws_batch_job_queue@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_batch_job_queue terraform documentation>
-- for more information.
data BatchJobQueueData s = BatchJobQueueData'
    { _name :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

batchJobQueueData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.DataSource P.Provider (BatchJobQueueData s)
batchJobQueueData _name =
    TF.newDataSource "aws_batch_job_queue" TF.validator $
        BatchJobQueueData'
            { _name = _name
            }

instance TF.IsObject (BatchJobQueueData s) where
    toObject BatchJobQueueData'{..} = P.catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        ]

instance TF.IsValid (BatchJobQueueData s) where
    validator = P.mempty

instance P.HasName (BatchJobQueueData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: BatchJobQueueData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: BatchJobQueueData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (BatchJobQueueData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedComputeEnvironmentOrder (TF.Ref s' (BatchJobQueueData s)) (TF.Attr s [TF.Attr s (ComputeEnvironmentOrder s)]) where
    computedComputeEnvironmentOrder x = TF.compute (TF.refKey x) "_computedComputeEnvironmentOrder"

instance s ~ s' => P.HasComputedPriority (TF.Ref s' (BatchJobQueueData s)) (TF.Attr s P.Integer) where
    computedPriority x = TF.compute (TF.refKey x) "_computedPriority"

instance s ~ s' => P.HasComputedState (TF.Ref s' (BatchJobQueueData s)) (TF.Attr s P.Text) where
    computedState x = TF.compute (TF.refKey x) "_computedState"

instance s ~ s' => P.HasComputedStatus (TF.Ref s' (BatchJobQueueData s)) (TF.Attr s P.Text) where
    computedStatus x = TF.compute (TF.refKey x) "_computedStatus"

instance s ~ s' => P.HasComputedStatusReason (TF.Ref s' (BatchJobQueueData s)) (TF.Attr s P.Text) where
    computedStatusReason x = TF.compute (TF.refKey x) "_computedStatusReason"

-- | @aws_billing_service_account@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_billing_service_account terraform documentation>
-- for more information.
data BillingServiceAccountData s = BillingServiceAccountData'
    deriving (P.Show, P.Eq, P.Generic)

billingServiceAccountData
    :: TF.DataSource P.Provider (BillingServiceAccountData s)
billingServiceAccountData =
    TF.newDataSource "aws_billing_service_account" TF.validator $
        BillingServiceAccountData'

instance TF.IsObject (BillingServiceAccountData s) where
    toObject _ = []

instance TF.IsValid (BillingServiceAccountData s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedArn (TF.Ref s' (BillingServiceAccountData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

-- | @aws_caller_identity@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_caller_identity terraform documentation>
-- for more information.
data CallerIdentityData s = CallerIdentityData'
    deriving (P.Show, P.Eq, P.Generic)

callerIdentityData
    :: TF.DataSource P.Provider (CallerIdentityData s)
callerIdentityData =
    TF.newDataSource "aws_caller_identity" TF.validator $
        CallerIdentityData'

instance TF.IsObject (CallerIdentityData s) where
    toObject _ = []

instance TF.IsValid (CallerIdentityData s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedAccountId (TF.Ref s' (CallerIdentityData s)) (TF.Attr s P.Text) where
    computedAccountId x = TF.compute (TF.refKey x) "_computedAccountId"

instance s ~ s' => P.HasComputedArn (TF.Ref s' (CallerIdentityData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedUserId (TF.Ref s' (CallerIdentityData s)) (TF.Attr s P.Text) where
    computedUserId x = TF.compute (TF.refKey x) "_computedUserId"

-- | @aws_canonical_user_id@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_canonical_user_id terraform documentation>
-- for more information.
data CanonicalUserIdData s = CanonicalUserIdData'
    deriving (P.Show, P.Eq, P.Generic)

canonicalUserIdData
    :: TF.DataSource P.Provider (CanonicalUserIdData s)
canonicalUserIdData =
    TF.newDataSource "aws_canonical_user_id" TF.validator $
        CanonicalUserIdData'

instance TF.IsObject (CanonicalUserIdData s) where
    toObject _ = []

instance TF.IsValid (CanonicalUserIdData s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedDisplayName (TF.Ref s' (CanonicalUserIdData s)) (TF.Attr s P.Text) where
    computedDisplayName x = TF.compute (TF.refKey x) "_computedDisplayName"

-- | @aws_cloudformation_export@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_cloudformation_export terraform documentation>
-- for more information.
data CloudformationExportData s = CloudformationExportData'
    { _name :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

cloudformationExportData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.DataSource P.Provider (CloudformationExportData s)
cloudformationExportData _name =
    TF.newDataSource "aws_cloudformation_export" TF.validator $
        CloudformationExportData'
            { _name = _name
            }

instance TF.IsObject (CloudformationExportData s) where
    toObject CloudformationExportData'{..} = P.catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        ]

instance TF.IsValid (CloudformationExportData s) where
    validator = P.mempty

instance P.HasName (CloudformationExportData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: CloudformationExportData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: CloudformationExportData s)

instance s ~ s' => P.HasComputedExportingStackId (TF.Ref s' (CloudformationExportData s)) (TF.Attr s P.Text) where
    computedExportingStackId x = TF.compute (TF.refKey x) "_computedExportingStackId"

instance s ~ s' => P.HasComputedValue (TF.Ref s' (CloudformationExportData s)) (TF.Attr s P.Text) where
    computedValue x = TF.compute (TF.refKey x) "_computedValue"

-- | @aws_cloudformation_stack@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_cloudformation_stack terraform documentation>
-- for more information.
data CloudformationStackData s = CloudformationStackData'
    { _name :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

cloudformationStackData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.DataSource P.Provider (CloudformationStackData s)
cloudformationStackData _name =
    TF.newDataSource "aws_cloudformation_stack" TF.validator $
        CloudformationStackData'
            { _name = _name
            }

instance TF.IsObject (CloudformationStackData s) where
    toObject CloudformationStackData'{..} = P.catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        ]

instance TF.IsValid (CloudformationStackData s) where
    validator = P.mempty

instance P.HasName (CloudformationStackData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: CloudformationStackData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: CloudformationStackData s)

instance s ~ s' => P.HasComputedCapabilities (TF.Ref s' (CloudformationStackData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedCapabilities x = TF.compute (TF.refKey x) "_computedCapabilities"

instance s ~ s' => P.HasComputedDescription (TF.Ref s' (CloudformationStackData s)) (TF.Attr s P.Text) where
    computedDescription x = TF.compute (TF.refKey x) "_computedDescription"

instance s ~ s' => P.HasComputedDisableRollback (TF.Ref s' (CloudformationStackData s)) (TF.Attr s P.Bool) where
    computedDisableRollback x = TF.compute (TF.refKey x) "_computedDisableRollback"

instance s ~ s' => P.HasComputedIamRoleArn (TF.Ref s' (CloudformationStackData s)) (TF.Attr s P.Text) where
    computedIamRoleArn x = TF.compute (TF.refKey x) "_computedIamRoleArn"

instance s ~ s' => P.HasComputedNotificationArns (TF.Ref s' (CloudformationStackData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedNotificationArns x = TF.compute (TF.refKey x) "_computedNotificationArns"

instance s ~ s' => P.HasComputedOutputs (TF.Ref s' (CloudformationStackData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedOutputs x = TF.compute (TF.refKey x) "_computedOutputs"

instance s ~ s' => P.HasComputedParameters (TF.Ref s' (CloudformationStackData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedParameters x = TF.compute (TF.refKey x) "_computedParameters"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (CloudformationStackData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "_computedTags"

instance s ~ s' => P.HasComputedTemplateBody (TF.Ref s' (CloudformationStackData s)) (TF.Attr s P.Text) where
    computedTemplateBody x = TF.compute (TF.refKey x) "_computedTemplateBody"

instance s ~ s' => P.HasComputedTimeoutInMinutes (TF.Ref s' (CloudformationStackData s)) (TF.Attr s P.Integer) where
    computedTimeoutInMinutes x = TF.compute (TF.refKey x) "_computedTimeoutInMinutes"

-- | @aws_cloudtrail_service_account@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_cloudtrail_service_account terraform documentation>
-- for more information.
data CloudtrailServiceAccountData s = CloudtrailServiceAccountData'
    { _region :: TF.Attr s P.Text
    -- ^ @region@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

cloudtrailServiceAccountData
    :: TF.DataSource P.Provider (CloudtrailServiceAccountData s)
cloudtrailServiceAccountData =
    TF.newDataSource "aws_cloudtrail_service_account" TF.validator $
        CloudtrailServiceAccountData'
            { _region = TF.Nil
            }

instance TF.IsObject (CloudtrailServiceAccountData s) where
    toObject CloudtrailServiceAccountData'{..} = P.catMaybes
        [ TF.assign "region" <$> TF.attribute _region
        ]

instance TF.IsValid (CloudtrailServiceAccountData s) where
    validator = P.mempty

instance P.HasRegion (CloudtrailServiceAccountData s) (TF.Attr s P.Text) where
    region =
        P.lens (_region :: CloudtrailServiceAccountData s -> TF.Attr s P.Text)
               (\s a -> s { _region = a } :: CloudtrailServiceAccountData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (CloudtrailServiceAccountData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

-- | @aws_cloudwatch_log_group@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_cloudwatch_log_group terraform documentation>
-- for more information.
data CloudwatchLogGroupData s = CloudwatchLogGroupData'
    { _name :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

cloudwatchLogGroupData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.DataSource P.Provider (CloudwatchLogGroupData s)
cloudwatchLogGroupData _name =
    TF.newDataSource "aws_cloudwatch_log_group" TF.validator $
        CloudwatchLogGroupData'
            { _name = _name
            }

instance TF.IsObject (CloudwatchLogGroupData s) where
    toObject CloudwatchLogGroupData'{..} = P.catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        ]

instance TF.IsValid (CloudwatchLogGroupData s) where
    validator = P.mempty

instance P.HasName (CloudwatchLogGroupData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: CloudwatchLogGroupData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: CloudwatchLogGroupData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (CloudwatchLogGroupData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedCreationTime (TF.Ref s' (CloudwatchLogGroupData s)) (TF.Attr s P.Integer) where
    computedCreationTime x = TF.compute (TF.refKey x) "_computedCreationTime"

-- | @aws_codecommit_repository@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_codecommit_repository terraform documentation>
-- for more information.
data CodecommitRepositoryData s = CodecommitRepositoryData'
    { _repositoryName :: TF.Attr s P.Text
    -- ^ @repository_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

codecommitRepositoryData
    :: TF.Attr s P.Text -- ^ @repository_name@ - 'P.repositoryName'
    -> TF.DataSource P.Provider (CodecommitRepositoryData s)
codecommitRepositoryData _repositoryName =
    TF.newDataSource "aws_codecommit_repository" TF.validator $
        CodecommitRepositoryData'
            { _repositoryName = _repositoryName
            }

instance TF.IsObject (CodecommitRepositoryData s) where
    toObject CodecommitRepositoryData'{..} = P.catMaybes
        [ TF.assign "repository_name" <$> TF.attribute _repositoryName
        ]

instance TF.IsValid (CodecommitRepositoryData s) where
    validator = P.mempty

instance P.HasRepositoryName (CodecommitRepositoryData s) (TF.Attr s P.Text) where
    repositoryName =
        P.lens (_repositoryName :: CodecommitRepositoryData s -> TF.Attr s P.Text)
               (\s a -> s { _repositoryName = a } :: CodecommitRepositoryData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (CodecommitRepositoryData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedCloneUrlHttp (TF.Ref s' (CodecommitRepositoryData s)) (TF.Attr s P.Text) where
    computedCloneUrlHttp x = TF.compute (TF.refKey x) "_computedCloneUrlHttp"

instance s ~ s' => P.HasComputedCloneUrlSsh (TF.Ref s' (CodecommitRepositoryData s)) (TF.Attr s P.Text) where
    computedCloneUrlSsh x = TF.compute (TF.refKey x) "_computedCloneUrlSsh"

instance s ~ s' => P.HasComputedRepositoryId (TF.Ref s' (CodecommitRepositoryData s)) (TF.Attr s P.Text) where
    computedRepositoryId x = TF.compute (TF.refKey x) "_computedRepositoryId"

-- | @aws_cognito_user_pools@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_cognito_user_pools terraform documentation>
-- for more information.
data CognitoUserPoolsData s = CognitoUserPoolsData'
    { _name :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

cognitoUserPoolsData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.DataSource P.Provider (CognitoUserPoolsData s)
cognitoUserPoolsData _name =
    TF.newDataSource "aws_cognito_user_pools" TF.validator $
        CognitoUserPoolsData'
            { _name = _name
            }

instance TF.IsObject (CognitoUserPoolsData s) where
    toObject CognitoUserPoolsData'{..} = P.catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        ]

instance TF.IsValid (CognitoUserPoolsData s) where
    validator = P.mempty

instance P.HasName (CognitoUserPoolsData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: CognitoUserPoolsData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: CognitoUserPoolsData s)

instance s ~ s' => P.HasComputedArns (TF.Ref s' (CognitoUserPoolsData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedArns x = TF.compute (TF.refKey x) "_computedArns"

instance s ~ s' => P.HasComputedIds (TF.Ref s' (CognitoUserPoolsData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedIds x = TF.compute (TF.refKey x) "_computedIds"

-- | @aws_db_cluster_snapshot@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_db_cluster_snapshot terraform documentation>
-- for more information.
data DbClusterSnapshotData s = DbClusterSnapshotData'
    { _dbClusterIdentifier         :: TF.Attr s P.Text
    -- ^ @db_cluster_identifier@ - (Optional)
    --
    , _dbClusterSnapshotIdentifier :: TF.Attr s P.Text
    -- ^ @db_cluster_snapshot_identifier@ - (Optional)
    --
    , _includePublic               :: TF.Attr s P.Bool
    -- ^ @include_public@ - (Optional)
    --
    , _includeShared               :: TF.Attr s P.Bool
    -- ^ @include_shared@ - (Optional)
    --
    , _mostRecent                  :: TF.Attr s P.Bool
    -- ^ @most_recent@ - (Optional)
    --
    , _snapshotType                :: TF.Attr s P.Text
    -- ^ @snapshot_type@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

dbClusterSnapshotData
    :: TF.DataSource P.Provider (DbClusterSnapshotData s)
dbClusterSnapshotData =
    TF.newDataSource "aws_db_cluster_snapshot" TF.validator $
        DbClusterSnapshotData'
            { _dbClusterIdentifier = TF.Nil
            , _dbClusterSnapshotIdentifier = TF.Nil
            , _includePublic = TF.value P.False
            , _includeShared = TF.value P.False
            , _mostRecent = TF.value P.False
            , _snapshotType = TF.Nil
            }

instance TF.IsObject (DbClusterSnapshotData s) where
    toObject DbClusterSnapshotData'{..} = P.catMaybes
        [ TF.assign "db_cluster_identifier" <$> TF.attribute _dbClusterIdentifier
        , TF.assign "db_cluster_snapshot_identifier" <$> TF.attribute _dbClusterSnapshotIdentifier
        , TF.assign "include_public" <$> TF.attribute _includePublic
        , TF.assign "include_shared" <$> TF.attribute _includeShared
        , TF.assign "most_recent" <$> TF.attribute _mostRecent
        , TF.assign "snapshot_type" <$> TF.attribute _snapshotType
        ]

instance TF.IsValid (DbClusterSnapshotData s) where
    validator = P.mempty

instance P.HasDbClusterIdentifier (DbClusterSnapshotData s) (TF.Attr s P.Text) where
    dbClusterIdentifier =
        P.lens (_dbClusterIdentifier :: DbClusterSnapshotData s -> TF.Attr s P.Text)
               (\s a -> s { _dbClusterIdentifier = a } :: DbClusterSnapshotData s)

instance P.HasDbClusterSnapshotIdentifier (DbClusterSnapshotData s) (TF.Attr s P.Text) where
    dbClusterSnapshotIdentifier =
        P.lens (_dbClusterSnapshotIdentifier :: DbClusterSnapshotData s -> TF.Attr s P.Text)
               (\s a -> s { _dbClusterSnapshotIdentifier = a } :: DbClusterSnapshotData s)

instance P.HasIncludePublic (DbClusterSnapshotData s) (TF.Attr s P.Bool) where
    includePublic =
        P.lens (_includePublic :: DbClusterSnapshotData s -> TF.Attr s P.Bool)
               (\s a -> s { _includePublic = a } :: DbClusterSnapshotData s)

instance P.HasIncludeShared (DbClusterSnapshotData s) (TF.Attr s P.Bool) where
    includeShared =
        P.lens (_includeShared :: DbClusterSnapshotData s -> TF.Attr s P.Bool)
               (\s a -> s { _includeShared = a } :: DbClusterSnapshotData s)

instance P.HasMostRecent (DbClusterSnapshotData s) (TF.Attr s P.Bool) where
    mostRecent =
        P.lens (_mostRecent :: DbClusterSnapshotData s -> TF.Attr s P.Bool)
               (\s a -> s { _mostRecent = a } :: DbClusterSnapshotData s)

instance P.HasSnapshotType (DbClusterSnapshotData s) (TF.Attr s P.Text) where
    snapshotType =
        P.lens (_snapshotType :: DbClusterSnapshotData s -> TF.Attr s P.Text)
               (\s a -> s { _snapshotType = a } :: DbClusterSnapshotData s)

instance s ~ s' => P.HasComputedAllocatedStorage (TF.Ref s' (DbClusterSnapshotData s)) (TF.Attr s P.Integer) where
    computedAllocatedStorage x = TF.compute (TF.refKey x) "_computedAllocatedStorage"

instance s ~ s' => P.HasComputedAvailabilityZones (TF.Ref s' (DbClusterSnapshotData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedAvailabilityZones x = TF.compute (TF.refKey x) "_computedAvailabilityZones"

instance s ~ s' => P.HasComputedDbClusterSnapshotArn (TF.Ref s' (DbClusterSnapshotData s)) (TF.Attr s P.Text) where
    computedDbClusterSnapshotArn x = TF.compute (TF.refKey x) "_computedDbClusterSnapshotArn"

instance s ~ s' => P.HasComputedEngine (TF.Ref s' (DbClusterSnapshotData s)) (TF.Attr s P.Text) where
    computedEngine x = TF.compute (TF.refKey x) "_computedEngine"

instance s ~ s' => P.HasComputedEngineVersion (TF.Ref s' (DbClusterSnapshotData s)) (TF.Attr s P.Text) where
    computedEngineVersion x = TF.compute (TF.refKey x) "_computedEngineVersion"

instance s ~ s' => P.HasComputedKmsKeyId (TF.Ref s' (DbClusterSnapshotData s)) (TF.Attr s P.Text) where
    computedKmsKeyId x = TF.compute (TF.refKey x) "_computedKmsKeyId"

instance s ~ s' => P.HasComputedLicenseModel (TF.Ref s' (DbClusterSnapshotData s)) (TF.Attr s P.Text) where
    computedLicenseModel x = TF.compute (TF.refKey x) "_computedLicenseModel"

instance s ~ s' => P.HasComputedPort (TF.Ref s' (DbClusterSnapshotData s)) (TF.Attr s P.Integer) where
    computedPort x = TF.compute (TF.refKey x) "_computedPort"

instance s ~ s' => P.HasComputedSnapshotCreateTime (TF.Ref s' (DbClusterSnapshotData s)) (TF.Attr s P.Text) where
    computedSnapshotCreateTime x = TF.compute (TF.refKey x) "_computedSnapshotCreateTime"

instance s ~ s' => P.HasComputedSourceDbClusterSnapshotArn (TF.Ref s' (DbClusterSnapshotData s)) (TF.Attr s P.Text) where
    computedSourceDbClusterSnapshotArn x = TF.compute (TF.refKey x) "_computedSourceDbClusterSnapshotArn"

instance s ~ s' => P.HasComputedStatus (TF.Ref s' (DbClusterSnapshotData s)) (TF.Attr s P.Text) where
    computedStatus x = TF.compute (TF.refKey x) "_computedStatus"

instance s ~ s' => P.HasComputedStorageEncrypted (TF.Ref s' (DbClusterSnapshotData s)) (TF.Attr s P.Bool) where
    computedStorageEncrypted x = TF.compute (TF.refKey x) "_computedStorageEncrypted"

instance s ~ s' => P.HasComputedVpcId (TF.Ref s' (DbClusterSnapshotData s)) (TF.Attr s P.Text) where
    computedVpcId x = TF.compute (TF.refKey x) "_computedVpcId"

-- | @aws_db_instance@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_db_instance terraform documentation>
-- for more information.
data DbInstanceData s = DbInstanceData'
    { _dbInstanceIdentifier :: TF.Attr s P.Text
    -- ^ @db_instance_identifier@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

dbInstanceData
    :: TF.Attr s P.Text -- ^ @db_instance_identifier@ - 'P.dbInstanceIdentifier'
    -> TF.DataSource P.Provider (DbInstanceData s)
dbInstanceData _dbInstanceIdentifier =
    TF.newDataSource "aws_db_instance" TF.validator $
        DbInstanceData'
            { _dbInstanceIdentifier = _dbInstanceIdentifier
            }

instance TF.IsObject (DbInstanceData s) where
    toObject DbInstanceData'{..} = P.catMaybes
        [ TF.assign "db_instance_identifier" <$> TF.attribute _dbInstanceIdentifier
        ]

instance TF.IsValid (DbInstanceData s) where
    validator = P.mempty

instance P.HasDbInstanceIdentifier (DbInstanceData s) (TF.Attr s P.Text) where
    dbInstanceIdentifier =
        P.lens (_dbInstanceIdentifier :: DbInstanceData s -> TF.Attr s P.Text)
               (\s a -> s { _dbInstanceIdentifier = a } :: DbInstanceData s)

instance s ~ s' => P.HasComputedAddress (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Text) where
    computedAddress x = TF.compute (TF.refKey x) "_computedAddress"

instance s ~ s' => P.HasComputedAllocatedStorage (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Integer) where
    computedAllocatedStorage x = TF.compute (TF.refKey x) "_computedAllocatedStorage"

instance s ~ s' => P.HasComputedAutoMinorVersionUpgrade (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Bool) where
    computedAutoMinorVersionUpgrade x = TF.compute (TF.refKey x) "_computedAutoMinorVersionUpgrade"

instance s ~ s' => P.HasComputedAvailabilityZone (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Text) where
    computedAvailabilityZone x = TF.compute (TF.refKey x) "_computedAvailabilityZone"

instance s ~ s' => P.HasComputedBackupRetentionPeriod (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Integer) where
    computedBackupRetentionPeriod x = TF.compute (TF.refKey x) "_computedBackupRetentionPeriod"

instance s ~ s' => P.HasComputedCaCertIdentifier (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Text) where
    computedCaCertIdentifier x = TF.compute (TF.refKey x) "_computedCaCertIdentifier"

instance s ~ s' => P.HasComputedDbClusterIdentifier (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Text) where
    computedDbClusterIdentifier x = TF.compute (TF.refKey x) "_computedDbClusterIdentifier"

instance s ~ s' => P.HasComputedDbInstanceArn (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Text) where
    computedDbInstanceArn x = TF.compute (TF.refKey x) "_computedDbInstanceArn"

instance s ~ s' => P.HasComputedDbInstanceClass (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Text) where
    computedDbInstanceClass x = TF.compute (TF.refKey x) "_computedDbInstanceClass"

instance s ~ s' => P.HasComputedDbInstancePort (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Integer) where
    computedDbInstancePort x = TF.compute (TF.refKey x) "_computedDbInstancePort"

instance s ~ s' => P.HasComputedDbName (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Text) where
    computedDbName x = TF.compute (TF.refKey x) "_computedDbName"

instance s ~ s' => P.HasComputedDbParameterGroups (TF.Ref s' (DbInstanceData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedDbParameterGroups x = TF.compute (TF.refKey x) "_computedDbParameterGroups"

instance s ~ s' => P.HasComputedDbSecurityGroups (TF.Ref s' (DbInstanceData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedDbSecurityGroups x = TF.compute (TF.refKey x) "_computedDbSecurityGroups"

instance s ~ s' => P.HasComputedDbSubnetGroup (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Text) where
    computedDbSubnetGroup x = TF.compute (TF.refKey x) "_computedDbSubnetGroup"

instance s ~ s' => P.HasComputedEndpoint (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Text) where
    computedEndpoint x = TF.compute (TF.refKey x) "_computedEndpoint"

instance s ~ s' => P.HasComputedEngine (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Text) where
    computedEngine x = TF.compute (TF.refKey x) "_computedEngine"

instance s ~ s' => P.HasComputedEngineVersion (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Text) where
    computedEngineVersion x = TF.compute (TF.refKey x) "_computedEngineVersion"

instance s ~ s' => P.HasComputedHostedZoneId (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Text) where
    computedHostedZoneId x = TF.compute (TF.refKey x) "_computedHostedZoneId"

instance s ~ s' => P.HasComputedIops (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Integer) where
    computedIops x = TF.compute (TF.refKey x) "_computedIops"

instance s ~ s' => P.HasComputedKmsKeyId (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Text) where
    computedKmsKeyId x = TF.compute (TF.refKey x) "_computedKmsKeyId"

instance s ~ s' => P.HasComputedLicenseModel (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Text) where
    computedLicenseModel x = TF.compute (TF.refKey x) "_computedLicenseModel"

instance s ~ s' => P.HasComputedMasterUsername (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Text) where
    computedMasterUsername x = TF.compute (TF.refKey x) "_computedMasterUsername"

instance s ~ s' => P.HasComputedMonitoringInterval (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Integer) where
    computedMonitoringInterval x = TF.compute (TF.refKey x) "_computedMonitoringInterval"

instance s ~ s' => P.HasComputedMonitoringRoleArn (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Text) where
    computedMonitoringRoleArn x = TF.compute (TF.refKey x) "_computedMonitoringRoleArn"

instance s ~ s' => P.HasComputedMultiAz (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Bool) where
    computedMultiAz x = TF.compute (TF.refKey x) "_computedMultiAz"

instance s ~ s' => P.HasComputedOptionGroupMemberships (TF.Ref s' (DbInstanceData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedOptionGroupMemberships x = TF.compute (TF.refKey x) "_computedOptionGroupMemberships"

instance s ~ s' => P.HasComputedPort (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Integer) where
    computedPort x = TF.compute (TF.refKey x) "_computedPort"

instance s ~ s' => P.HasComputedPreferredBackupWindow (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Text) where
    computedPreferredBackupWindow x = TF.compute (TF.refKey x) "_computedPreferredBackupWindow"

instance s ~ s' => P.HasComputedPreferredMaintenanceWindow (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Text) where
    computedPreferredMaintenanceWindow x = TF.compute (TF.refKey x) "_computedPreferredMaintenanceWindow"

instance s ~ s' => P.HasComputedPubliclyAccessible (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Bool) where
    computedPubliclyAccessible x = TF.compute (TF.refKey x) "_computedPubliclyAccessible"

instance s ~ s' => P.HasComputedReplicateSourceDb (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Text) where
    computedReplicateSourceDb x = TF.compute (TF.refKey x) "_computedReplicateSourceDb"

instance s ~ s' => P.HasComputedStorageEncrypted (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Bool) where
    computedStorageEncrypted x = TF.compute (TF.refKey x) "_computedStorageEncrypted"

instance s ~ s' => P.HasComputedStorageType (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Text) where
    computedStorageType x = TF.compute (TF.refKey x) "_computedStorageType"

instance s ~ s' => P.HasComputedTimezone (TF.Ref s' (DbInstanceData s)) (TF.Attr s P.Text) where
    computedTimezone x = TF.compute (TF.refKey x) "_computedTimezone"

instance s ~ s' => P.HasComputedVpcSecurityGroups (TF.Ref s' (DbInstanceData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedVpcSecurityGroups x = TF.compute (TF.refKey x) "_computedVpcSecurityGroups"

-- | @aws_db_snapshot@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_db_snapshot terraform documentation>
-- for more information.
data DbSnapshotData s = DbSnapshotData'
    { _dbInstanceIdentifier :: TF.Attr s P.Text
    -- ^ @db_instance_identifier@ - (Optional)
    --
    , _dbSnapshotIdentifier :: TF.Attr s P.Text
    -- ^ @db_snapshot_identifier@ - (Optional)
    --
    , _includePublic        :: TF.Attr s P.Bool
    -- ^ @include_public@ - (Optional)
    --
    , _includeShared        :: TF.Attr s P.Bool
    -- ^ @include_shared@ - (Optional)
    --
    , _mostRecent           :: TF.Attr s P.Bool
    -- ^ @most_recent@ - (Optional)
    --
    , _snapshotType         :: TF.Attr s P.Text
    -- ^ @snapshot_type@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

dbSnapshotData
    :: TF.DataSource P.Provider (DbSnapshotData s)
dbSnapshotData =
    TF.newDataSource "aws_db_snapshot" TF.validator $
        DbSnapshotData'
            { _dbInstanceIdentifier = TF.Nil
            , _dbSnapshotIdentifier = TF.Nil
            , _includePublic = TF.value P.False
            , _includeShared = TF.value P.False
            , _mostRecent = TF.value P.False
            , _snapshotType = TF.Nil
            }

instance TF.IsObject (DbSnapshotData s) where
    toObject DbSnapshotData'{..} = P.catMaybes
        [ TF.assign "db_instance_identifier" <$> TF.attribute _dbInstanceIdentifier
        , TF.assign "db_snapshot_identifier" <$> TF.attribute _dbSnapshotIdentifier
        , TF.assign "include_public" <$> TF.attribute _includePublic
        , TF.assign "include_shared" <$> TF.attribute _includeShared
        , TF.assign "most_recent" <$> TF.attribute _mostRecent
        , TF.assign "snapshot_type" <$> TF.attribute _snapshotType
        ]

instance TF.IsValid (DbSnapshotData s) where
    validator = P.mempty

instance P.HasDbInstanceIdentifier (DbSnapshotData s) (TF.Attr s P.Text) where
    dbInstanceIdentifier =
        P.lens (_dbInstanceIdentifier :: DbSnapshotData s -> TF.Attr s P.Text)
               (\s a -> s { _dbInstanceIdentifier = a } :: DbSnapshotData s)

instance P.HasDbSnapshotIdentifier (DbSnapshotData s) (TF.Attr s P.Text) where
    dbSnapshotIdentifier =
        P.lens (_dbSnapshotIdentifier :: DbSnapshotData s -> TF.Attr s P.Text)
               (\s a -> s { _dbSnapshotIdentifier = a } :: DbSnapshotData s)

instance P.HasIncludePublic (DbSnapshotData s) (TF.Attr s P.Bool) where
    includePublic =
        P.lens (_includePublic :: DbSnapshotData s -> TF.Attr s P.Bool)
               (\s a -> s { _includePublic = a } :: DbSnapshotData s)

instance P.HasIncludeShared (DbSnapshotData s) (TF.Attr s P.Bool) where
    includeShared =
        P.lens (_includeShared :: DbSnapshotData s -> TF.Attr s P.Bool)
               (\s a -> s { _includeShared = a } :: DbSnapshotData s)

instance P.HasMostRecent (DbSnapshotData s) (TF.Attr s P.Bool) where
    mostRecent =
        P.lens (_mostRecent :: DbSnapshotData s -> TF.Attr s P.Bool)
               (\s a -> s { _mostRecent = a } :: DbSnapshotData s)

instance P.HasSnapshotType (DbSnapshotData s) (TF.Attr s P.Text) where
    snapshotType =
        P.lens (_snapshotType :: DbSnapshotData s -> TF.Attr s P.Text)
               (\s a -> s { _snapshotType = a } :: DbSnapshotData s)

instance s ~ s' => P.HasComputedAllocatedStorage (TF.Ref s' (DbSnapshotData s)) (TF.Attr s P.Integer) where
    computedAllocatedStorage x = TF.compute (TF.refKey x) "_computedAllocatedStorage"

instance s ~ s' => P.HasComputedAvailabilityZone (TF.Ref s' (DbSnapshotData s)) (TF.Attr s P.Text) where
    computedAvailabilityZone x = TF.compute (TF.refKey x) "_computedAvailabilityZone"

instance s ~ s' => P.HasComputedDbSnapshotArn (TF.Ref s' (DbSnapshotData s)) (TF.Attr s P.Text) where
    computedDbSnapshotArn x = TF.compute (TF.refKey x) "_computedDbSnapshotArn"

instance s ~ s' => P.HasComputedEncrypted (TF.Ref s' (DbSnapshotData s)) (TF.Attr s P.Bool) where
    computedEncrypted x = TF.compute (TF.refKey x) "_computedEncrypted"

instance s ~ s' => P.HasComputedEngine (TF.Ref s' (DbSnapshotData s)) (TF.Attr s P.Text) where
    computedEngine x = TF.compute (TF.refKey x) "_computedEngine"

instance s ~ s' => P.HasComputedEngineVersion (TF.Ref s' (DbSnapshotData s)) (TF.Attr s P.Text) where
    computedEngineVersion x = TF.compute (TF.refKey x) "_computedEngineVersion"

instance s ~ s' => P.HasComputedIops (TF.Ref s' (DbSnapshotData s)) (TF.Attr s P.Integer) where
    computedIops x = TF.compute (TF.refKey x) "_computedIops"

instance s ~ s' => P.HasComputedKmsKeyId (TF.Ref s' (DbSnapshotData s)) (TF.Attr s P.Text) where
    computedKmsKeyId x = TF.compute (TF.refKey x) "_computedKmsKeyId"

instance s ~ s' => P.HasComputedLicenseModel (TF.Ref s' (DbSnapshotData s)) (TF.Attr s P.Text) where
    computedLicenseModel x = TF.compute (TF.refKey x) "_computedLicenseModel"

instance s ~ s' => P.HasComputedOptionGroupName (TF.Ref s' (DbSnapshotData s)) (TF.Attr s P.Text) where
    computedOptionGroupName x = TF.compute (TF.refKey x) "_computedOptionGroupName"

instance s ~ s' => P.HasComputedPort (TF.Ref s' (DbSnapshotData s)) (TF.Attr s P.Integer) where
    computedPort x = TF.compute (TF.refKey x) "_computedPort"

instance s ~ s' => P.HasComputedSnapshotCreateTime (TF.Ref s' (DbSnapshotData s)) (TF.Attr s P.Text) where
    computedSnapshotCreateTime x = TF.compute (TF.refKey x) "_computedSnapshotCreateTime"

instance s ~ s' => P.HasComputedSourceDbSnapshotIdentifier (TF.Ref s' (DbSnapshotData s)) (TF.Attr s P.Text) where
    computedSourceDbSnapshotIdentifier x = TF.compute (TF.refKey x) "_computedSourceDbSnapshotIdentifier"

instance s ~ s' => P.HasComputedSourceRegion (TF.Ref s' (DbSnapshotData s)) (TF.Attr s P.Text) where
    computedSourceRegion x = TF.compute (TF.refKey x) "_computedSourceRegion"

instance s ~ s' => P.HasComputedStatus (TF.Ref s' (DbSnapshotData s)) (TF.Attr s P.Text) where
    computedStatus x = TF.compute (TF.refKey x) "_computedStatus"

instance s ~ s' => P.HasComputedStorageType (TF.Ref s' (DbSnapshotData s)) (TF.Attr s P.Text) where
    computedStorageType x = TF.compute (TF.refKey x) "_computedStorageType"

instance s ~ s' => P.HasComputedVpcId (TF.Ref s' (DbSnapshotData s)) (TF.Attr s P.Text) where
    computedVpcId x = TF.compute (TF.refKey x) "_computedVpcId"

-- | @aws_dx_gateway@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_dx_gateway terraform documentation>
-- for more information.
data DxGatewayData s = DxGatewayData'
    { _name :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

dxGatewayData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.DataSource P.Provider (DxGatewayData s)
dxGatewayData _name =
    TF.newDataSource "aws_dx_gateway" TF.validator $
        DxGatewayData'
            { _name = _name
            }

instance TF.IsObject (DxGatewayData s) where
    toObject DxGatewayData'{..} = P.catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        ]

instance TF.IsValid (DxGatewayData s) where
    validator = P.mempty

instance P.HasName (DxGatewayData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: DxGatewayData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: DxGatewayData s)

instance s ~ s' => P.HasComputedAmazonSideAsn (TF.Ref s' (DxGatewayData s)) (TF.Attr s P.Text) where
    computedAmazonSideAsn x = TF.compute (TF.refKey x) "_computedAmazonSideAsn"

-- | @aws_dynamodb_table@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_dynamodb_table terraform documentation>
-- for more information.
data DynamodbTableData s = DynamodbTableData'
    { _name :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

dynamodbTableData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.DataSource P.Provider (DynamodbTableData s)
dynamodbTableData _name =
    TF.newDataSource "aws_dynamodb_table" TF.validator $
        DynamodbTableData'
            { _name = _name
            }

instance TF.IsObject (DynamodbTableData s) where
    toObject DynamodbTableData'{..} = P.catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        ]

instance TF.IsValid (DynamodbTableData s) where
    validator = P.mempty

instance P.HasName (DynamodbTableData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: DynamodbTableData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: DynamodbTableData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (DynamodbTableData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedAttribute (TF.Ref s' (DynamodbTableData s)) (TF.Attr s [TF.Attr s (Attribute s)]) where
    computedAttribute x = TF.compute (TF.refKey x) "_computedAttribute"

instance s ~ s' => P.HasComputedGlobalSecondaryIndex (TF.Ref s' (DynamodbTableData s)) (TF.Attr s [TF.Attr s (GlobalSecondaryIndex s)]) where
    computedGlobalSecondaryIndex x = TF.compute (TF.refKey x) "_computedGlobalSecondaryIndex"

instance s ~ s' => P.HasComputedHashKey (TF.Ref s' (DynamodbTableData s)) (TF.Attr s P.Text) where
    computedHashKey x = TF.compute (TF.refKey x) "_computedHashKey"

instance s ~ s' => P.HasComputedLocalSecondaryIndex (TF.Ref s' (DynamodbTableData s)) (TF.Attr s [TF.Attr s (LocalSecondaryIndex s)]) where
    computedLocalSecondaryIndex x = TF.compute (TF.refKey x) "_computedLocalSecondaryIndex"

instance s ~ s' => P.HasComputedRangeKey (TF.Ref s' (DynamodbTableData s)) (TF.Attr s P.Text) where
    computedRangeKey x = TF.compute (TF.refKey x) "_computedRangeKey"

instance s ~ s' => P.HasComputedReadCapacity (TF.Ref s' (DynamodbTableData s)) (TF.Attr s P.Integer) where
    computedReadCapacity x = TF.compute (TF.refKey x) "_computedReadCapacity"

instance s ~ s' => P.HasComputedServerSideEncryption (TF.Ref s' (DynamodbTableData s)) (TF.Attr s (ServerSideEncryption s)) where
    computedServerSideEncryption x = TF.compute (TF.refKey x) "_computedServerSideEncryption"

instance s ~ s' => P.HasComputedStreamArn (TF.Ref s' (DynamodbTableData s)) (TF.Attr s P.Text) where
    computedStreamArn x = TF.compute (TF.refKey x) "_computedStreamArn"

instance s ~ s' => P.HasComputedStreamEnabled (TF.Ref s' (DynamodbTableData s)) (TF.Attr s P.Bool) where
    computedStreamEnabled x = TF.compute (TF.refKey x) "_computedStreamEnabled"

instance s ~ s' => P.HasComputedStreamLabel (TF.Ref s' (DynamodbTableData s)) (TF.Attr s P.Text) where
    computedStreamLabel x = TF.compute (TF.refKey x) "_computedStreamLabel"

instance s ~ s' => P.HasComputedStreamViewType (TF.Ref s' (DynamodbTableData s)) (TF.Attr s P.Text) where
    computedStreamViewType x = TF.compute (TF.refKey x) "_computedStreamViewType"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (DynamodbTableData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "_computedTags"

instance s ~ s' => P.HasComputedTtl (TF.Ref s' (DynamodbTableData s)) (TF.Attr s (Ttl s)) where
    computedTtl x = TF.compute (TF.refKey x) "_computedTtl"

instance s ~ s' => P.HasComputedWriteCapacity (TF.Ref s' (DynamodbTableData s)) (TF.Attr s P.Integer) where
    computedWriteCapacity x = TF.compute (TF.refKey x) "_computedWriteCapacity"

-- | @aws_ebs_snapshot@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_ebs_snapshot terraform documentation>
-- for more information.
data EbsSnapshotData s = EbsSnapshotData'
    { _filter              :: TF.Attr s [TF.Attr s (Filter s)]
    -- ^ @filter@ - (Optional)
    --
    , _mostRecent          :: TF.Attr s P.Bool
    -- ^ @most_recent@ - (Optional)
    --
    , _owners              :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @owners@ - (Optional)
    --
    , _restorableByUserIds :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @restorable_by_user_ids@ - (Optional)
    --
    , _snapshotIds         :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @snapshot_ids@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

ebsSnapshotData
    :: TF.DataSource P.Provider (EbsSnapshotData s)
ebsSnapshotData =
    TF.newDataSource "aws_ebs_snapshot" TF.validator $
        EbsSnapshotData'
            { _filter = TF.Nil
            , _mostRecent = TF.value P.False
            , _owners = TF.Nil
            , _restorableByUserIds = TF.Nil
            , _snapshotIds = TF.Nil
            }

instance TF.IsObject (EbsSnapshotData s) where
    toObject EbsSnapshotData'{..} = P.catMaybes
        [ TF.assign "filter" <$> TF.attribute _filter
        , TF.assign "most_recent" <$> TF.attribute _mostRecent
        , TF.assign "owners" <$> TF.attribute _owners
        , TF.assign "restorable_by_user_ids" <$> TF.attribute _restorableByUserIds
        , TF.assign "snapshot_ids" <$> TF.attribute _snapshotIds
        ]

instance TF.IsValid (EbsSnapshotData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filter"
                  (_filter
                      :: EbsSnapshotData s -> TF.Attr s [TF.Attr s (Filter s)])
                  TF.validator

instance P.HasFilter (EbsSnapshotData s) (TF.Attr s [TF.Attr s (Filter s)]) where
    filter =
        P.lens (_filter :: EbsSnapshotData s -> TF.Attr s [TF.Attr s (Filter s)])
               (\s a -> s { _filter = a } :: EbsSnapshotData s)

instance P.HasMostRecent (EbsSnapshotData s) (TF.Attr s P.Bool) where
    mostRecent =
        P.lens (_mostRecent :: EbsSnapshotData s -> TF.Attr s P.Bool)
               (\s a -> s { _mostRecent = a } :: EbsSnapshotData s)

instance P.HasOwners (EbsSnapshotData s) (TF.Attr s [TF.Attr s P.Text]) where
    owners =
        P.lens (_owners :: EbsSnapshotData s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _owners = a } :: EbsSnapshotData s)

instance P.HasRestorableByUserIds (EbsSnapshotData s) (TF.Attr s [TF.Attr s P.Text]) where
    restorableByUserIds =
        P.lens (_restorableByUserIds :: EbsSnapshotData s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _restorableByUserIds = a } :: EbsSnapshotData s)

instance P.HasSnapshotIds (EbsSnapshotData s) (TF.Attr s [TF.Attr s P.Text]) where
    snapshotIds =
        P.lens (_snapshotIds :: EbsSnapshotData s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _snapshotIds = a } :: EbsSnapshotData s)

instance s ~ s' => P.HasComputedDataEncryptionKeyId (TF.Ref s' (EbsSnapshotData s)) (TF.Attr s P.Text) where
    computedDataEncryptionKeyId x = TF.compute (TF.refKey x) "_computedDataEncryptionKeyId"

instance s ~ s' => P.HasComputedDescription (TF.Ref s' (EbsSnapshotData s)) (TF.Attr s P.Text) where
    computedDescription x = TF.compute (TF.refKey x) "_computedDescription"

instance s ~ s' => P.HasComputedEncrypted (TF.Ref s' (EbsSnapshotData s)) (TF.Attr s P.Bool) where
    computedEncrypted x = TF.compute (TF.refKey x) "_computedEncrypted"

instance s ~ s' => P.HasComputedKmsKeyId (TF.Ref s' (EbsSnapshotData s)) (TF.Attr s P.Text) where
    computedKmsKeyId x = TF.compute (TF.refKey x) "_computedKmsKeyId"

instance s ~ s' => P.HasComputedOwnerAlias (TF.Ref s' (EbsSnapshotData s)) (TF.Attr s P.Text) where
    computedOwnerAlias x = TF.compute (TF.refKey x) "_computedOwnerAlias"

instance s ~ s' => P.HasComputedOwnerId (TF.Ref s' (EbsSnapshotData s)) (TF.Attr s P.Text) where
    computedOwnerId x = TF.compute (TF.refKey x) "_computedOwnerId"

instance s ~ s' => P.HasComputedSnapshotId (TF.Ref s' (EbsSnapshotData s)) (TF.Attr s P.Text) where
    computedSnapshotId x = TF.compute (TF.refKey x) "_computedSnapshotId"

instance s ~ s' => P.HasComputedState (TF.Ref s' (EbsSnapshotData s)) (TF.Attr s P.Text) where
    computedState x = TF.compute (TF.refKey x) "_computedState"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (EbsSnapshotData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "_computedTags"

instance s ~ s' => P.HasComputedVolumeId (TF.Ref s' (EbsSnapshotData s)) (TF.Attr s P.Text) where
    computedVolumeId x = TF.compute (TF.refKey x) "_computedVolumeId"

instance s ~ s' => P.HasComputedVolumeSize (TF.Ref s' (EbsSnapshotData s)) (TF.Attr s P.Integer) where
    computedVolumeSize x = TF.compute (TF.refKey x) "_computedVolumeSize"

-- | @aws_ebs_snapshot_ids@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_ebs_snapshot_ids terraform documentation>
-- for more information.
data EbsSnapshotIdsData s = EbsSnapshotIdsData'
    { _filter              :: TF.Attr s [TF.Attr s (Filter s)]
    -- ^ @filter@ - (Optional)
    --
    , _owners              :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @owners@ - (Optional)
    --
    , _restorableByUserIds :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @restorable_by_user_ids@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

ebsSnapshotIdsData
    :: TF.DataSource P.Provider (EbsSnapshotIdsData s)
ebsSnapshotIdsData =
    TF.newDataSource "aws_ebs_snapshot_ids" TF.validator $
        EbsSnapshotIdsData'
            { _filter = TF.Nil
            , _owners = TF.Nil
            , _restorableByUserIds = TF.Nil
            }

instance TF.IsObject (EbsSnapshotIdsData s) where
    toObject EbsSnapshotIdsData'{..} = P.catMaybes
        [ TF.assign "filter" <$> TF.attribute _filter
        , TF.assign "owners" <$> TF.attribute _owners
        , TF.assign "restorable_by_user_ids" <$> TF.attribute _restorableByUserIds
        ]

instance TF.IsValid (EbsSnapshotIdsData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filter"
                  (_filter
                      :: EbsSnapshotIdsData s -> TF.Attr s [TF.Attr s (Filter s)])
                  TF.validator

instance P.HasFilter (EbsSnapshotIdsData s) (TF.Attr s [TF.Attr s (Filter s)]) where
    filter =
        P.lens (_filter :: EbsSnapshotIdsData s -> TF.Attr s [TF.Attr s (Filter s)])
               (\s a -> s { _filter = a } :: EbsSnapshotIdsData s)

instance P.HasOwners (EbsSnapshotIdsData s) (TF.Attr s [TF.Attr s P.Text]) where
    owners =
        P.lens (_owners :: EbsSnapshotIdsData s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _owners = a } :: EbsSnapshotIdsData s)

instance P.HasRestorableByUserIds (EbsSnapshotIdsData s) (TF.Attr s [TF.Attr s P.Text]) where
    restorableByUserIds =
        P.lens (_restorableByUserIds :: EbsSnapshotIdsData s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _restorableByUserIds = a } :: EbsSnapshotIdsData s)

instance s ~ s' => P.HasComputedIds (TF.Ref s' (EbsSnapshotIdsData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedIds x = TF.compute (TF.refKey x) "_computedIds"

-- | @aws_ebs_volume@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_ebs_volume terraform documentation>
-- for more information.
data EbsVolumeData s = EbsVolumeData'
    { _filter     :: TF.Attr s [TF.Attr s (Filter s)]
    -- ^ @filter@ - (Optional)
    --
    , _mostRecent :: TF.Attr s P.Bool
    -- ^ @most_recent@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

ebsVolumeData
    :: TF.DataSource P.Provider (EbsVolumeData s)
ebsVolumeData =
    TF.newDataSource "aws_ebs_volume" TF.validator $
        EbsVolumeData'
            { _filter = TF.Nil
            , _mostRecent = TF.value P.False
            }

instance TF.IsObject (EbsVolumeData s) where
    toObject EbsVolumeData'{..} = P.catMaybes
        [ TF.assign "filter" <$> TF.attribute _filter
        , TF.assign "most_recent" <$> TF.attribute _mostRecent
        ]

instance TF.IsValid (EbsVolumeData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filter"
                  (_filter
                      :: EbsVolumeData s -> TF.Attr s [TF.Attr s (Filter s)])
                  TF.validator

instance P.HasFilter (EbsVolumeData s) (TF.Attr s [TF.Attr s (Filter s)]) where
    filter =
        P.lens (_filter :: EbsVolumeData s -> TF.Attr s [TF.Attr s (Filter s)])
               (\s a -> s { _filter = a } :: EbsVolumeData s)

instance P.HasMostRecent (EbsVolumeData s) (TF.Attr s P.Bool) where
    mostRecent =
        P.lens (_mostRecent :: EbsVolumeData s -> TF.Attr s P.Bool)
               (\s a -> s { _mostRecent = a } :: EbsVolumeData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (EbsVolumeData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedAvailabilityZone (TF.Ref s' (EbsVolumeData s)) (TF.Attr s P.Text) where
    computedAvailabilityZone x = TF.compute (TF.refKey x) "_computedAvailabilityZone"

instance s ~ s' => P.HasComputedEncrypted (TF.Ref s' (EbsVolumeData s)) (TF.Attr s P.Bool) where
    computedEncrypted x = TF.compute (TF.refKey x) "_computedEncrypted"

instance s ~ s' => P.HasComputedIops (TF.Ref s' (EbsVolumeData s)) (TF.Attr s P.Integer) where
    computedIops x = TF.compute (TF.refKey x) "_computedIops"

instance s ~ s' => P.HasComputedKmsKeyId (TF.Ref s' (EbsVolumeData s)) (TF.Attr s P.Text) where
    computedKmsKeyId x = TF.compute (TF.refKey x) "_computedKmsKeyId"

instance s ~ s' => P.HasComputedSize (TF.Ref s' (EbsVolumeData s)) (TF.Attr s P.Integer) where
    computedSize x = TF.compute (TF.refKey x) "_computedSize"

instance s ~ s' => P.HasComputedSnapshotId (TF.Ref s' (EbsVolumeData s)) (TF.Attr s P.Text) where
    computedSnapshotId x = TF.compute (TF.refKey x) "_computedSnapshotId"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (EbsVolumeData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "_computedTags"

instance s ~ s' => P.HasComputedVolumeId (TF.Ref s' (EbsVolumeData s)) (TF.Attr s P.Text) where
    computedVolumeId x = TF.compute (TF.refKey x) "_computedVolumeId"

instance s ~ s' => P.HasComputedVolumeType (TF.Ref s' (EbsVolumeData s)) (TF.Attr s P.Text) where
    computedVolumeType x = TF.compute (TF.refKey x) "_computedVolumeType"

-- | @aws_ecr_repository@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_ecr_repository terraform documentation>
-- for more information.
data EcrRepositoryData s = EcrRepositoryData'
    { _name :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

ecrRepositoryData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.DataSource P.Provider (EcrRepositoryData s)
ecrRepositoryData _name =
    TF.newDataSource "aws_ecr_repository" TF.validator $
        EcrRepositoryData'
            { _name = _name
            }

instance TF.IsObject (EcrRepositoryData s) where
    toObject EcrRepositoryData'{..} = P.catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        ]

instance TF.IsValid (EcrRepositoryData s) where
    validator = P.mempty

instance P.HasName (EcrRepositoryData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: EcrRepositoryData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: EcrRepositoryData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (EcrRepositoryData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedRegistryId (TF.Ref s' (EcrRepositoryData s)) (TF.Attr s P.Text) where
    computedRegistryId x = TF.compute (TF.refKey x) "_computedRegistryId"

instance s ~ s' => P.HasComputedRepositoryUrl (TF.Ref s' (EcrRepositoryData s)) (TF.Attr s P.Text) where
    computedRepositoryUrl x = TF.compute (TF.refKey x) "_computedRepositoryUrl"

-- | @aws_ecs_cluster@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_ecs_cluster terraform documentation>
-- for more information.
data EcsClusterData s = EcsClusterData'
    { _clusterName :: TF.Attr s P.Text
    -- ^ @cluster_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

ecsClusterData
    :: TF.Attr s P.Text -- ^ @cluster_name@ - 'P.clusterName'
    -> TF.DataSource P.Provider (EcsClusterData s)
ecsClusterData _clusterName =
    TF.newDataSource "aws_ecs_cluster" TF.validator $
        EcsClusterData'
            { _clusterName = _clusterName
            }

instance TF.IsObject (EcsClusterData s) where
    toObject EcsClusterData'{..} = P.catMaybes
        [ TF.assign "cluster_name" <$> TF.attribute _clusterName
        ]

instance TF.IsValid (EcsClusterData s) where
    validator = P.mempty

instance P.HasClusterName (EcsClusterData s) (TF.Attr s P.Text) where
    clusterName =
        P.lens (_clusterName :: EcsClusterData s -> TF.Attr s P.Text)
               (\s a -> s { _clusterName = a } :: EcsClusterData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (EcsClusterData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedPendingTasksCount (TF.Ref s' (EcsClusterData s)) (TF.Attr s P.Integer) where
    computedPendingTasksCount x = TF.compute (TF.refKey x) "_computedPendingTasksCount"

instance s ~ s' => P.HasComputedRegisteredContainerInstancesCount (TF.Ref s' (EcsClusterData s)) (TF.Attr s P.Integer) where
    computedRegisteredContainerInstancesCount x = TF.compute (TF.refKey x) "_computedRegisteredContainerInstancesCount"

instance s ~ s' => P.HasComputedRunningTasksCount (TF.Ref s' (EcsClusterData s)) (TF.Attr s P.Integer) where
    computedRunningTasksCount x = TF.compute (TF.refKey x) "_computedRunningTasksCount"

instance s ~ s' => P.HasComputedStatus (TF.Ref s' (EcsClusterData s)) (TF.Attr s P.Text) where
    computedStatus x = TF.compute (TF.refKey x) "_computedStatus"

-- | @aws_ecs_container_definition@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_ecs_container_definition terraform documentation>
-- for more information.
data EcsContainerDefinitionData s = EcsContainerDefinitionData'
    { _containerName  :: TF.Attr s P.Text
    -- ^ @container_name@ - (Required)
    --
    , _taskDefinition :: TF.Attr s P.Text
    -- ^ @task_definition@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

ecsContainerDefinitionData
    :: TF.Attr s P.Text -- ^ @container_name@ - 'P.containerName'
    -> TF.Attr s P.Text -- ^ @task_definition@ - 'P.taskDefinition'
    -> TF.DataSource P.Provider (EcsContainerDefinitionData s)
ecsContainerDefinitionData _containerName _taskDefinition =
    TF.newDataSource "aws_ecs_container_definition" TF.validator $
        EcsContainerDefinitionData'
            { _containerName = _containerName
            , _taskDefinition = _taskDefinition
            }

instance TF.IsObject (EcsContainerDefinitionData s) where
    toObject EcsContainerDefinitionData'{..} = P.catMaybes
        [ TF.assign "container_name" <$> TF.attribute _containerName
        , TF.assign "task_definition" <$> TF.attribute _taskDefinition
        ]

instance TF.IsValid (EcsContainerDefinitionData s) where
    validator = P.mempty

instance P.HasContainerName (EcsContainerDefinitionData s) (TF.Attr s P.Text) where
    containerName =
        P.lens (_containerName :: EcsContainerDefinitionData s -> TF.Attr s P.Text)
               (\s a -> s { _containerName = a } :: EcsContainerDefinitionData s)

instance P.HasTaskDefinition (EcsContainerDefinitionData s) (TF.Attr s P.Text) where
    taskDefinition =
        P.lens (_taskDefinition :: EcsContainerDefinitionData s -> TF.Attr s P.Text)
               (\s a -> s { _taskDefinition = a } :: EcsContainerDefinitionData s)

instance s ~ s' => P.HasComputedCpu (TF.Ref s' (EcsContainerDefinitionData s)) (TF.Attr s P.Integer) where
    computedCpu x = TF.compute (TF.refKey x) "_computedCpu"

instance s ~ s' => P.HasComputedDisableNetworking (TF.Ref s' (EcsContainerDefinitionData s)) (TF.Attr s P.Bool) where
    computedDisableNetworking x = TF.compute (TF.refKey x) "_computedDisableNetworking"

instance s ~ s' => P.HasComputedDockerLabels (TF.Ref s' (EcsContainerDefinitionData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedDockerLabels x = TF.compute (TF.refKey x) "_computedDockerLabels"

instance s ~ s' => P.HasComputedEnvironment (TF.Ref s' (EcsContainerDefinitionData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedEnvironment x = TF.compute (TF.refKey x) "_computedEnvironment"

instance s ~ s' => P.HasComputedImage (TF.Ref s' (EcsContainerDefinitionData s)) (TF.Attr s P.Text) where
    computedImage x = TF.compute (TF.refKey x) "_computedImage"

instance s ~ s' => P.HasComputedImageDigest (TF.Ref s' (EcsContainerDefinitionData s)) (TF.Attr s P.Text) where
    computedImageDigest x = TF.compute (TF.refKey x) "_computedImageDigest"

instance s ~ s' => P.HasComputedMemory (TF.Ref s' (EcsContainerDefinitionData s)) (TF.Attr s P.Integer) where
    computedMemory x = TF.compute (TF.refKey x) "_computedMemory"

instance s ~ s' => P.HasComputedMemoryReservation (TF.Ref s' (EcsContainerDefinitionData s)) (TF.Attr s P.Integer) where
    computedMemoryReservation x = TF.compute (TF.refKey x) "_computedMemoryReservation"

-- | @aws_ecs_service@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_ecs_service terraform documentation>
-- for more information.
data EcsServiceData s = EcsServiceData'
    { _clusterArn  :: TF.Attr s P.Text
    -- ^ @cluster_arn@ - (Required)
    --
    , _serviceName :: TF.Attr s P.Text
    -- ^ @service_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

ecsServiceData
    :: TF.Attr s P.Text -- ^ @cluster_arn@ - 'P.clusterArn'
    -> TF.Attr s P.Text -- ^ @service_name@ - 'P.serviceName'
    -> TF.DataSource P.Provider (EcsServiceData s)
ecsServiceData _clusterArn _serviceName =
    TF.newDataSource "aws_ecs_service" TF.validator $
        EcsServiceData'
            { _clusterArn = _clusterArn
            , _serviceName = _serviceName
            }

instance TF.IsObject (EcsServiceData s) where
    toObject EcsServiceData'{..} = P.catMaybes
        [ TF.assign "cluster_arn" <$> TF.attribute _clusterArn
        , TF.assign "service_name" <$> TF.attribute _serviceName
        ]

instance TF.IsValid (EcsServiceData s) where
    validator = P.mempty

instance P.HasClusterArn (EcsServiceData s) (TF.Attr s P.Text) where
    clusterArn =
        P.lens (_clusterArn :: EcsServiceData s -> TF.Attr s P.Text)
               (\s a -> s { _clusterArn = a } :: EcsServiceData s)

instance P.HasServiceName (EcsServiceData s) (TF.Attr s P.Text) where
    serviceName =
        P.lens (_serviceName :: EcsServiceData s -> TF.Attr s P.Text)
               (\s a -> s { _serviceName = a } :: EcsServiceData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (EcsServiceData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedDesiredCount (TF.Ref s' (EcsServiceData s)) (TF.Attr s P.Integer) where
    computedDesiredCount x = TF.compute (TF.refKey x) "_computedDesiredCount"

instance s ~ s' => P.HasComputedLaunchType (TF.Ref s' (EcsServiceData s)) (TF.Attr s P.Text) where
    computedLaunchType x = TF.compute (TF.refKey x) "_computedLaunchType"

instance s ~ s' => P.HasComputedSchedulingStrategy (TF.Ref s' (EcsServiceData s)) (TF.Attr s P.Text) where
    computedSchedulingStrategy x = TF.compute (TF.refKey x) "_computedSchedulingStrategy"

instance s ~ s' => P.HasComputedTaskDefinition (TF.Ref s' (EcsServiceData s)) (TF.Attr s P.Text) where
    computedTaskDefinition x = TF.compute (TF.refKey x) "_computedTaskDefinition"

-- | @aws_ecs_task_definition@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_ecs_task_definition terraform documentation>
-- for more information.
data EcsTaskDefinitionData s = EcsTaskDefinitionData'
    { _taskDefinition :: TF.Attr s P.Text
    -- ^ @task_definition@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

ecsTaskDefinitionData
    :: TF.Attr s P.Text -- ^ @task_definition@ - 'P.taskDefinition'
    -> TF.DataSource P.Provider (EcsTaskDefinitionData s)
ecsTaskDefinitionData _taskDefinition =
    TF.newDataSource "aws_ecs_task_definition" TF.validator $
        EcsTaskDefinitionData'
            { _taskDefinition = _taskDefinition
            }

instance TF.IsObject (EcsTaskDefinitionData s) where
    toObject EcsTaskDefinitionData'{..} = P.catMaybes
        [ TF.assign "task_definition" <$> TF.attribute _taskDefinition
        ]

instance TF.IsValid (EcsTaskDefinitionData s) where
    validator = P.mempty

instance P.HasTaskDefinition (EcsTaskDefinitionData s) (TF.Attr s P.Text) where
    taskDefinition =
        P.lens (_taskDefinition :: EcsTaskDefinitionData s -> TF.Attr s P.Text)
               (\s a -> s { _taskDefinition = a } :: EcsTaskDefinitionData s)

instance s ~ s' => P.HasComputedFamily (TF.Ref s' (EcsTaskDefinitionData s)) (TF.Attr s P.Text) where
    computedFamily x = TF.compute (TF.refKey x) "_computedFamily"

instance s ~ s' => P.HasComputedNetworkMode (TF.Ref s' (EcsTaskDefinitionData s)) (TF.Attr s P.Text) where
    computedNetworkMode x = TF.compute (TF.refKey x) "_computedNetworkMode"

instance s ~ s' => P.HasComputedRevision (TF.Ref s' (EcsTaskDefinitionData s)) (TF.Attr s P.Integer) where
    computedRevision x = TF.compute (TF.refKey x) "_computedRevision"

instance s ~ s' => P.HasComputedStatus (TF.Ref s' (EcsTaskDefinitionData s)) (TF.Attr s P.Text) where
    computedStatus x = TF.compute (TF.refKey x) "_computedStatus"

instance s ~ s' => P.HasComputedTaskRoleArn (TF.Ref s' (EcsTaskDefinitionData s)) (TF.Attr s P.Text) where
    computedTaskRoleArn x = TF.compute (TF.refKey x) "_computedTaskRoleArn"

-- | @aws_efs_file_system@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_efs_file_system terraform documentation>
-- for more information.
data EfsFileSystemData s = EfsFileSystemData'
    deriving (P.Show, P.Eq, P.Generic)

efsFileSystemData
    :: TF.DataSource P.Provider (EfsFileSystemData s)
efsFileSystemData =
    TF.newDataSource "aws_efs_file_system" TF.validator $
        EfsFileSystemData'

instance TF.IsObject (EfsFileSystemData s) where
    toObject _ = []

instance TF.IsValid (EfsFileSystemData s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedCreationToken (TF.Ref s' (EfsFileSystemData s)) (TF.Attr s P.Text) where
    computedCreationToken x = TF.compute (TF.refKey x) "_computedCreationToken"

instance s ~ s' => P.HasComputedDnsName (TF.Ref s' (EfsFileSystemData s)) (TF.Attr s P.Text) where
    computedDnsName x = TF.compute (TF.refKey x) "_computedDnsName"

instance s ~ s' => P.HasComputedEncrypted (TF.Ref s' (EfsFileSystemData s)) (TF.Attr s P.Bool) where
    computedEncrypted x = TF.compute (TF.refKey x) "_computedEncrypted"

instance s ~ s' => P.HasComputedFileSystemId (TF.Ref s' (EfsFileSystemData s)) (TF.Attr s P.Text) where
    computedFileSystemId x = TF.compute (TF.refKey x) "_computedFileSystemId"

instance s ~ s' => P.HasComputedKmsKeyId (TF.Ref s' (EfsFileSystemData s)) (TF.Attr s P.Text) where
    computedKmsKeyId x = TF.compute (TF.refKey x) "_computedKmsKeyId"

instance s ~ s' => P.HasComputedPerformanceMode (TF.Ref s' (EfsFileSystemData s)) (TF.Attr s P.Text) where
    computedPerformanceMode x = TF.compute (TF.refKey x) "_computedPerformanceMode"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (EfsFileSystemData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "_computedTags"

-- | @aws_efs_mount_target@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_efs_mount_target terraform documentation>
-- for more information.
data EfsMountTargetData s = EfsMountTargetData'
    { _mountTargetId :: TF.Attr s P.Text
    -- ^ @mount_target_id@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

efsMountTargetData
    :: TF.Attr s P.Text -- ^ @mount_target_id@ - 'P.mountTargetId'
    -> TF.DataSource P.Provider (EfsMountTargetData s)
efsMountTargetData _mountTargetId =
    TF.newDataSource "aws_efs_mount_target" TF.validator $
        EfsMountTargetData'
            { _mountTargetId = _mountTargetId
            }

instance TF.IsObject (EfsMountTargetData s) where
    toObject EfsMountTargetData'{..} = P.catMaybes
        [ TF.assign "mount_target_id" <$> TF.attribute _mountTargetId
        ]

instance TF.IsValid (EfsMountTargetData s) where
    validator = P.mempty

instance P.HasMountTargetId (EfsMountTargetData s) (TF.Attr s P.Text) where
    mountTargetId =
        P.lens (_mountTargetId :: EfsMountTargetData s -> TF.Attr s P.Text)
               (\s a -> s { _mountTargetId = a } :: EfsMountTargetData s)

instance s ~ s' => P.HasComputedDnsName (TF.Ref s' (EfsMountTargetData s)) (TF.Attr s P.Text) where
    computedDnsName x = TF.compute (TF.refKey x) "_computedDnsName"

instance s ~ s' => P.HasComputedFileSystemId (TF.Ref s' (EfsMountTargetData s)) (TF.Attr s P.Text) where
    computedFileSystemId x = TF.compute (TF.refKey x) "_computedFileSystemId"

instance s ~ s' => P.HasComputedIpAddress (TF.Ref s' (EfsMountTargetData s)) (TF.Attr s P.Text) where
    computedIpAddress x = TF.compute (TF.refKey x) "_computedIpAddress"

instance s ~ s' => P.HasComputedNetworkInterfaceId (TF.Ref s' (EfsMountTargetData s)) (TF.Attr s P.Text) where
    computedNetworkInterfaceId x = TF.compute (TF.refKey x) "_computedNetworkInterfaceId"

instance s ~ s' => P.HasComputedSecurityGroups (TF.Ref s' (EfsMountTargetData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedSecurityGroups x = TF.compute (TF.refKey x) "_computedSecurityGroups"

instance s ~ s' => P.HasComputedSubnetId (TF.Ref s' (EfsMountTargetData s)) (TF.Attr s P.Text) where
    computedSubnetId x = TF.compute (TF.refKey x) "_computedSubnetId"

-- | @aws_eip@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_eip terraform documentation>
-- for more information.
data EipData s = EipData'
    deriving (P.Show, P.Eq, P.Generic)

eipData
    :: TF.DataSource P.Provider (EipData s)
eipData =
    TF.newDataSource "aws_eip" TF.validator $
        EipData'

instance TF.IsObject (EipData s) where
    toObject _ = []

instance TF.IsValid (EipData s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedId (TF.Ref s' (EipData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "_computedId"

instance s ~ s' => P.HasComputedPublicIp (TF.Ref s' (EipData s)) (TF.Attr s P.Text) where
    computedPublicIp x = TF.compute (TF.refKey x) "_computedPublicIp"

-- | @aws_eks_cluster@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_eks_cluster terraform documentation>
-- for more information.
data EksClusterData s = EksClusterData'
    { _name :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

eksClusterData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.DataSource P.Provider (EksClusterData s)
eksClusterData _name =
    TF.newDataSource "aws_eks_cluster" TF.validator $
        EksClusterData'
            { _name = _name
            }

instance TF.IsObject (EksClusterData s) where
    toObject EksClusterData'{..} = P.catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        ]

instance TF.IsValid (EksClusterData s) where
    validator = P.mempty

instance P.HasName (EksClusterData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: EksClusterData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: EksClusterData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (EksClusterData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedCertificateAuthority (TF.Ref s' (EksClusterData s)) (TF.Attr s (CertificateAuthority s)) where
    computedCertificateAuthority x = TF.compute (TF.refKey x) "_computedCertificateAuthority"

instance s ~ s' => P.HasComputedCreatedAt (TF.Ref s' (EksClusterData s)) (TF.Attr s P.Text) where
    computedCreatedAt x = TF.compute (TF.refKey x) "_computedCreatedAt"

instance s ~ s' => P.HasComputedEndpoint (TF.Ref s' (EksClusterData s)) (TF.Attr s P.Text) where
    computedEndpoint x = TF.compute (TF.refKey x) "_computedEndpoint"

instance s ~ s' => P.HasComputedRoleArn (TF.Ref s' (EksClusterData s)) (TF.Attr s P.Text) where
    computedRoleArn x = TF.compute (TF.refKey x) "_computedRoleArn"

instance s ~ s' => P.HasComputedVersion (TF.Ref s' (EksClusterData s)) (TF.Attr s P.Text) where
    computedVersion x = TF.compute (TF.refKey x) "_computedVersion"

instance s ~ s' => P.HasComputedVpcConfig (TF.Ref s' (EksClusterData s)) (TF.Attr s (VpcConfig s)) where
    computedVpcConfig x = TF.compute (TF.refKey x) "_computedVpcConfig"

-- | @aws_elastic_beanstalk_hosted_zone@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_elastic_beanstalk_hosted_zone terraform documentation>
-- for more information.
data ElasticBeanstalkHostedZoneData s = ElasticBeanstalkHostedZoneData'
    { _region :: TF.Attr s P.Text
    -- ^ @region@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

elasticBeanstalkHostedZoneData
    :: TF.DataSource P.Provider (ElasticBeanstalkHostedZoneData s)
elasticBeanstalkHostedZoneData =
    TF.newDataSource "aws_elastic_beanstalk_hosted_zone" TF.validator $
        ElasticBeanstalkHostedZoneData'
            { _region = TF.Nil
            }

instance TF.IsObject (ElasticBeanstalkHostedZoneData s) where
    toObject ElasticBeanstalkHostedZoneData'{..} = P.catMaybes
        [ TF.assign "region" <$> TF.attribute _region
        ]

instance TF.IsValid (ElasticBeanstalkHostedZoneData s) where
    validator = P.mempty

instance P.HasRegion (ElasticBeanstalkHostedZoneData s) (TF.Attr s P.Text) where
    region =
        P.lens (_region :: ElasticBeanstalkHostedZoneData s -> TF.Attr s P.Text)
               (\s a -> s { _region = a } :: ElasticBeanstalkHostedZoneData s)

-- | @aws_elastic_beanstalk_solution_stack@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_elastic_beanstalk_solution_stack terraform documentation>
-- for more information.
data ElasticBeanstalkSolutionStackData s = ElasticBeanstalkSolutionStackData'
    { _mostRecent :: TF.Attr s P.Bool
    -- ^ @most_recent@ - (Optional)
    --
    , _nameRegex  :: TF.Attr s P.Text
    -- ^ @name_regex@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

elasticBeanstalkSolutionStackData
    :: TF.Attr s P.Text -- ^ @name_regex@ - 'P.nameRegex'
    -> TF.DataSource P.Provider (ElasticBeanstalkSolutionStackData s)
elasticBeanstalkSolutionStackData _nameRegex =
    TF.newDataSource "aws_elastic_beanstalk_solution_stack" TF.validator $
        ElasticBeanstalkSolutionStackData'
            { _mostRecent = TF.value P.False
            , _nameRegex = _nameRegex
            }

instance TF.IsObject (ElasticBeanstalkSolutionStackData s) where
    toObject ElasticBeanstalkSolutionStackData'{..} = P.catMaybes
        [ TF.assign "most_recent" <$> TF.attribute _mostRecent
        , TF.assign "name_regex" <$> TF.attribute _nameRegex
        ]

instance TF.IsValid (ElasticBeanstalkSolutionStackData s) where
    validator = P.mempty

instance P.HasMostRecent (ElasticBeanstalkSolutionStackData s) (TF.Attr s P.Bool) where
    mostRecent =
        P.lens (_mostRecent :: ElasticBeanstalkSolutionStackData s -> TF.Attr s P.Bool)
               (\s a -> s { _mostRecent = a } :: ElasticBeanstalkSolutionStackData s)

instance P.HasNameRegex (ElasticBeanstalkSolutionStackData s) (TF.Attr s P.Text) where
    nameRegex =
        P.lens (_nameRegex :: ElasticBeanstalkSolutionStackData s -> TF.Attr s P.Text)
               (\s a -> s { _nameRegex = a } :: ElasticBeanstalkSolutionStackData s)

instance s ~ s' => P.HasComputedName (TF.Ref s' (ElasticBeanstalkSolutionStackData s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "_computedName"

-- | @aws_elasticache_cluster@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_elasticache_cluster terraform documentation>
-- for more information.
data ElasticacheClusterData s = ElasticacheClusterData'
    { _clusterId :: TF.Attr s P.Text
    -- ^ @cluster_id@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

elasticacheClusterData
    :: TF.Attr s P.Text -- ^ @cluster_id@ - 'P.clusterId'
    -> TF.DataSource P.Provider (ElasticacheClusterData s)
elasticacheClusterData _clusterId =
    TF.newDataSource "aws_elasticache_cluster" TF.validator $
        ElasticacheClusterData'
            { _clusterId = _clusterId
            }

instance TF.IsObject (ElasticacheClusterData s) where
    toObject ElasticacheClusterData'{..} = P.catMaybes
        [ TF.assign "cluster_id" <$> TF.attribute _clusterId
        ]

instance TF.IsValid (ElasticacheClusterData s) where
    validator = P.mempty

instance P.HasClusterId (ElasticacheClusterData s) (TF.Attr s P.Text) where
    clusterId =
        P.lens (_clusterId :: ElasticacheClusterData s -> TF.Attr s P.Text)
               (\s a -> s { _clusterId = a } :: ElasticacheClusterData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (ElasticacheClusterData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedAvailabilityZone (TF.Ref s' (ElasticacheClusterData s)) (TF.Attr s P.Text) where
    computedAvailabilityZone x = TF.compute (TF.refKey x) "_computedAvailabilityZone"

instance s ~ s' => P.HasComputedCacheNodes (TF.Ref s' (ElasticacheClusterData s)) (TF.Attr s [TF.Attr s (CacheNodes s)]) where
    computedCacheNodes x = TF.compute (TF.refKey x) "_computedCacheNodes"

instance s ~ s' => P.HasComputedClusterAddress (TF.Ref s' (ElasticacheClusterData s)) (TF.Attr s P.Text) where
    computedClusterAddress x = TF.compute (TF.refKey x) "_computedClusterAddress"

instance s ~ s' => P.HasComputedConfigurationEndpoint (TF.Ref s' (ElasticacheClusterData s)) (TF.Attr s P.Text) where
    computedConfigurationEndpoint x = TF.compute (TF.refKey x) "_computedConfigurationEndpoint"

instance s ~ s' => P.HasComputedEngine (TF.Ref s' (ElasticacheClusterData s)) (TF.Attr s P.Text) where
    computedEngine x = TF.compute (TF.refKey x) "_computedEngine"

instance s ~ s' => P.HasComputedEngineVersion (TF.Ref s' (ElasticacheClusterData s)) (TF.Attr s P.Text) where
    computedEngineVersion x = TF.compute (TF.refKey x) "_computedEngineVersion"

instance s ~ s' => P.HasComputedMaintenanceWindow (TF.Ref s' (ElasticacheClusterData s)) (TF.Attr s P.Text) where
    computedMaintenanceWindow x = TF.compute (TF.refKey x) "_computedMaintenanceWindow"

instance s ~ s' => P.HasComputedNodeType (TF.Ref s' (ElasticacheClusterData s)) (TF.Attr s P.Text) where
    computedNodeType x = TF.compute (TF.refKey x) "_computedNodeType"

instance s ~ s' => P.HasComputedNotificationTopicArn (TF.Ref s' (ElasticacheClusterData s)) (TF.Attr s P.Text) where
    computedNotificationTopicArn x = TF.compute (TF.refKey x) "_computedNotificationTopicArn"

instance s ~ s' => P.HasComputedNumCacheNodes (TF.Ref s' (ElasticacheClusterData s)) (TF.Attr s P.Integer) where
    computedNumCacheNodes x = TF.compute (TF.refKey x) "_computedNumCacheNodes"

instance s ~ s' => P.HasComputedParameterGroupName (TF.Ref s' (ElasticacheClusterData s)) (TF.Attr s P.Text) where
    computedParameterGroupName x = TF.compute (TF.refKey x) "_computedParameterGroupName"

instance s ~ s' => P.HasComputedPort (TF.Ref s' (ElasticacheClusterData s)) (TF.Attr s P.Integer) where
    computedPort x = TF.compute (TF.refKey x) "_computedPort"

instance s ~ s' => P.HasComputedReplicationGroupId (TF.Ref s' (ElasticacheClusterData s)) (TF.Attr s P.Text) where
    computedReplicationGroupId x = TF.compute (TF.refKey x) "_computedReplicationGroupId"

instance s ~ s' => P.HasComputedSecurityGroupIds (TF.Ref s' (ElasticacheClusterData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedSecurityGroupIds x = TF.compute (TF.refKey x) "_computedSecurityGroupIds"

instance s ~ s' => P.HasComputedSecurityGroupNames (TF.Ref s' (ElasticacheClusterData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedSecurityGroupNames x = TF.compute (TF.refKey x) "_computedSecurityGroupNames"

instance s ~ s' => P.HasComputedSnapshotRetentionLimit (TF.Ref s' (ElasticacheClusterData s)) (TF.Attr s P.Integer) where
    computedSnapshotRetentionLimit x = TF.compute (TF.refKey x) "_computedSnapshotRetentionLimit"

instance s ~ s' => P.HasComputedSnapshotWindow (TF.Ref s' (ElasticacheClusterData s)) (TF.Attr s P.Text) where
    computedSnapshotWindow x = TF.compute (TF.refKey x) "_computedSnapshotWindow"

instance s ~ s' => P.HasComputedSubnetGroupName (TF.Ref s' (ElasticacheClusterData s)) (TF.Attr s P.Text) where
    computedSubnetGroupName x = TF.compute (TF.refKey x) "_computedSubnetGroupName"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (ElasticacheClusterData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "_computedTags"

-- | @aws_elasticache_replication_group@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_elasticache_replication_group terraform documentation>
-- for more information.
data ElasticacheReplicationGroupData s = ElasticacheReplicationGroupData'
    { _replicationGroupId :: TF.Attr s P.Text
    -- ^ @replication_group_id@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

elasticacheReplicationGroupData
    :: TF.Attr s P.Text -- ^ @replication_group_id@ - 'P.replicationGroupId'
    -> TF.DataSource P.Provider (ElasticacheReplicationGroupData s)
elasticacheReplicationGroupData _replicationGroupId =
    TF.newDataSource "aws_elasticache_replication_group" TF.validator $
        ElasticacheReplicationGroupData'
            { _replicationGroupId = _replicationGroupId
            }

instance TF.IsObject (ElasticacheReplicationGroupData s) where
    toObject ElasticacheReplicationGroupData'{..} = P.catMaybes
        [ TF.assign "replication_group_id" <$> TF.attribute _replicationGroupId
        ]

instance TF.IsValid (ElasticacheReplicationGroupData s) where
    validator = P.mempty

instance P.HasReplicationGroupId (ElasticacheReplicationGroupData s) (TF.Attr s P.Text) where
    replicationGroupId =
        P.lens (_replicationGroupId :: ElasticacheReplicationGroupData s -> TF.Attr s P.Text)
               (\s a -> s { _replicationGroupId = a } :: ElasticacheReplicationGroupData s)

instance s ~ s' => P.HasComputedAuthTokenEnabled (TF.Ref s' (ElasticacheReplicationGroupData s)) (TF.Attr s P.Bool) where
    computedAuthTokenEnabled x = TF.compute (TF.refKey x) "_computedAuthTokenEnabled"

instance s ~ s' => P.HasComputedAutomaticFailoverEnabled (TF.Ref s' (ElasticacheReplicationGroupData s)) (TF.Attr s P.Bool) where
    computedAutomaticFailoverEnabled x = TF.compute (TF.refKey x) "_computedAutomaticFailoverEnabled"

instance s ~ s' => P.HasComputedConfigurationEndpointAddress (TF.Ref s' (ElasticacheReplicationGroupData s)) (TF.Attr s P.Text) where
    computedConfigurationEndpointAddress x = TF.compute (TF.refKey x) "_computedConfigurationEndpointAddress"

instance s ~ s' => P.HasComputedMemberClusters (TF.Ref s' (ElasticacheReplicationGroupData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedMemberClusters x = TF.compute (TF.refKey x) "_computedMemberClusters"

instance s ~ s' => P.HasComputedNodeType (TF.Ref s' (ElasticacheReplicationGroupData s)) (TF.Attr s P.Text) where
    computedNodeType x = TF.compute (TF.refKey x) "_computedNodeType"

instance s ~ s' => P.HasComputedNumberCacheClusters (TF.Ref s' (ElasticacheReplicationGroupData s)) (TF.Attr s P.Integer) where
    computedNumberCacheClusters x = TF.compute (TF.refKey x) "_computedNumberCacheClusters"

instance s ~ s' => P.HasComputedPort (TF.Ref s' (ElasticacheReplicationGroupData s)) (TF.Attr s P.Integer) where
    computedPort x = TF.compute (TF.refKey x) "_computedPort"

instance s ~ s' => P.HasComputedPrimaryEndpointAddress (TF.Ref s' (ElasticacheReplicationGroupData s)) (TF.Attr s P.Text) where
    computedPrimaryEndpointAddress x = TF.compute (TF.refKey x) "_computedPrimaryEndpointAddress"

instance s ~ s' => P.HasComputedReplicationGroupDescription (TF.Ref s' (ElasticacheReplicationGroupData s)) (TF.Attr s P.Text) where
    computedReplicationGroupDescription x = TF.compute (TF.refKey x) "_computedReplicationGroupDescription"

instance s ~ s' => P.HasComputedSnapshotRetentionLimit (TF.Ref s' (ElasticacheReplicationGroupData s)) (TF.Attr s P.Integer) where
    computedSnapshotRetentionLimit x = TF.compute (TF.refKey x) "_computedSnapshotRetentionLimit"

instance s ~ s' => P.HasComputedSnapshotWindow (TF.Ref s' (ElasticacheReplicationGroupData s)) (TF.Attr s P.Text) where
    computedSnapshotWindow x = TF.compute (TF.refKey x) "_computedSnapshotWindow"

-- | @aws_elb@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_elb terraform documentation>
-- for more information.
data ElbData s = ElbData'
    { _name :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

elbData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.DataSource P.Provider (ElbData s)
elbData _name =
    TF.newDataSource "aws_elb" TF.validator $
        ElbData'
            { _name = _name
            }

instance TF.IsObject (ElbData s) where
    toObject ElbData'{..} = P.catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        ]

instance TF.IsValid (ElbData s) where
    validator = P.mempty

instance P.HasName (ElbData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: ElbData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: ElbData s)

instance s ~ s' => P.HasComputedAccessLogs (TF.Ref s' (ElbData s)) (TF.Attr s (AccessLogs s)) where
    computedAccessLogs x = TF.compute (TF.refKey x) "_computedAccessLogs"

instance s ~ s' => P.HasComputedAvailabilityZones (TF.Ref s' (ElbData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedAvailabilityZones x = TF.compute (TF.refKey x) "_computedAvailabilityZones"

instance s ~ s' => P.HasComputedConnectionDraining (TF.Ref s' (ElbData s)) (TF.Attr s P.Bool) where
    computedConnectionDraining x = TF.compute (TF.refKey x) "_computedConnectionDraining"

instance s ~ s' => P.HasComputedConnectionDrainingTimeout (TF.Ref s' (ElbData s)) (TF.Attr s P.Integer) where
    computedConnectionDrainingTimeout x = TF.compute (TF.refKey x) "_computedConnectionDrainingTimeout"

instance s ~ s' => P.HasComputedCrossZoneLoadBalancing (TF.Ref s' (ElbData s)) (TF.Attr s P.Bool) where
    computedCrossZoneLoadBalancing x = TF.compute (TF.refKey x) "_computedCrossZoneLoadBalancing"

instance s ~ s' => P.HasComputedDnsName (TF.Ref s' (ElbData s)) (TF.Attr s P.Text) where
    computedDnsName x = TF.compute (TF.refKey x) "_computedDnsName"

instance s ~ s' => P.HasComputedHealthCheck (TF.Ref s' (ElbData s)) (TF.Attr s (HealthCheck s)) where
    computedHealthCheck x = TF.compute (TF.refKey x) "_computedHealthCheck"

instance s ~ s' => P.HasComputedIdleTimeout (TF.Ref s' (ElbData s)) (TF.Attr s P.Integer) where
    computedIdleTimeout x = TF.compute (TF.refKey x) "_computedIdleTimeout"

instance s ~ s' => P.HasComputedInstances (TF.Ref s' (ElbData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedInstances x = TF.compute (TF.refKey x) "_computedInstances"

instance s ~ s' => P.HasComputedInternal (TF.Ref s' (ElbData s)) (TF.Attr s P.Bool) where
    computedInternal x = TF.compute (TF.refKey x) "_computedInternal"

instance s ~ s' => P.HasComputedListener (TF.Ref s' (ElbData s)) (TF.Attr s [TF.Attr s (Listener s)]) where
    computedListener x = TF.compute (TF.refKey x) "_computedListener"

instance s ~ s' => P.HasComputedSecurityGroups (TF.Ref s' (ElbData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedSecurityGroups x = TF.compute (TF.refKey x) "_computedSecurityGroups"

instance s ~ s' => P.HasComputedSourceSecurityGroup (TF.Ref s' (ElbData s)) (TF.Attr s P.Text) where
    computedSourceSecurityGroup x = TF.compute (TF.refKey x) "_computedSourceSecurityGroup"

instance s ~ s' => P.HasComputedSourceSecurityGroupId (TF.Ref s' (ElbData s)) (TF.Attr s P.Text) where
    computedSourceSecurityGroupId x = TF.compute (TF.refKey x) "_computedSourceSecurityGroupId"

instance s ~ s' => P.HasComputedSubnets (TF.Ref s' (ElbData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedSubnets x = TF.compute (TF.refKey x) "_computedSubnets"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (ElbData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "_computedTags"

instance s ~ s' => P.HasComputedZoneId (TF.Ref s' (ElbData s)) (TF.Attr s P.Text) where
    computedZoneId x = TF.compute (TF.refKey x) "_computedZoneId"

-- | @aws_elb_hosted_zone_id@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_elb_hosted_zone_id terraform documentation>
-- for more information.
data ElbHostedZoneIdData s = ElbHostedZoneIdData'
    { _region :: TF.Attr s P.Text
    -- ^ @region@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

elbHostedZoneIdData
    :: TF.DataSource P.Provider (ElbHostedZoneIdData s)
elbHostedZoneIdData =
    TF.newDataSource "aws_elb_hosted_zone_id" TF.validator $
        ElbHostedZoneIdData'
            { _region = TF.Nil
            }

instance TF.IsObject (ElbHostedZoneIdData s) where
    toObject ElbHostedZoneIdData'{..} = P.catMaybes
        [ TF.assign "region" <$> TF.attribute _region
        ]

instance TF.IsValid (ElbHostedZoneIdData s) where
    validator = P.mempty

instance P.HasRegion (ElbHostedZoneIdData s) (TF.Attr s P.Text) where
    region =
        P.lens (_region :: ElbHostedZoneIdData s -> TF.Attr s P.Text)
               (\s a -> s { _region = a } :: ElbHostedZoneIdData s)

-- | @aws_elb_service_account@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_elb_service_account terraform documentation>
-- for more information.
data ElbServiceAccountData s = ElbServiceAccountData'
    { _region :: TF.Attr s P.Text
    -- ^ @region@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

elbServiceAccountData
    :: TF.DataSource P.Provider (ElbServiceAccountData s)
elbServiceAccountData =
    TF.newDataSource "aws_elb_service_account" TF.validator $
        ElbServiceAccountData'
            { _region = TF.Nil
            }

instance TF.IsObject (ElbServiceAccountData s) where
    toObject ElbServiceAccountData'{..} = P.catMaybes
        [ TF.assign "region" <$> TF.attribute _region
        ]

instance TF.IsValid (ElbServiceAccountData s) where
    validator = P.mempty

instance P.HasRegion (ElbServiceAccountData s) (TF.Attr s P.Text) where
    region =
        P.lens (_region :: ElbServiceAccountData s -> TF.Attr s P.Text)
               (\s a -> s { _region = a } :: ElbServiceAccountData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (ElbServiceAccountData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

-- | @aws_glue_script@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_glue_script terraform documentation>
-- for more information.
data GlueScriptData s = GlueScriptData'
    { _dagEdge  :: TF.Attr s [TF.Attr s (DagEdge s)]
    -- ^ @dag_edge@ - (Required)
    --
    , _dagNode  :: TF.Attr s [TF.Attr s (DagNode s)]
    -- ^ @dag_node@ - (Required)
    --
    , _language :: TF.Attr s P.Text
    -- ^ @language@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

glueScriptData
    :: TF.Attr s [TF.Attr s (DagEdge s)] -- ^ @dag_edge@ - 'P.dagEdge'
    -> TF.Attr s [TF.Attr s (DagNode s)] -- ^ @dag_node@ - 'P.dagNode'
    -> TF.DataSource P.Provider (GlueScriptData s)
glueScriptData _dagEdge _dagNode =
    TF.newDataSource "aws_glue_script" TF.validator $
        GlueScriptData'
            { _dagEdge = _dagEdge
            , _dagNode = _dagNode
            , _language = TF.value "PYTHON"
            }

instance TF.IsObject (GlueScriptData s) where
    toObject GlueScriptData'{..} = P.catMaybes
        [ TF.assign "dag_edge" <$> TF.attribute _dagEdge
        , TF.assign "dag_node" <$> TF.attribute _dagNode
        , TF.assign "language" <$> TF.attribute _language
        ]

instance TF.IsValid (GlueScriptData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_dagEdge"
                  (_dagEdge
                      :: GlueScriptData s -> TF.Attr s [TF.Attr s (DagEdge s)])
                  TF.validator
           P.<> TF.settingsValidator "_dagNode"
                  (_dagNode
                      :: GlueScriptData s -> TF.Attr s [TF.Attr s (DagNode s)])
                  TF.validator

instance P.HasDagEdge (GlueScriptData s) (TF.Attr s [TF.Attr s (DagEdge s)]) where
    dagEdge =
        P.lens (_dagEdge :: GlueScriptData s -> TF.Attr s [TF.Attr s (DagEdge s)])
               (\s a -> s { _dagEdge = a } :: GlueScriptData s)

instance P.HasDagNode (GlueScriptData s) (TF.Attr s [TF.Attr s (DagNode s)]) where
    dagNode =
        P.lens (_dagNode :: GlueScriptData s -> TF.Attr s [TF.Attr s (DagNode s)])
               (\s a -> s { _dagNode = a } :: GlueScriptData s)

instance P.HasLanguage (GlueScriptData s) (TF.Attr s P.Text) where
    language =
        P.lens (_language :: GlueScriptData s -> TF.Attr s P.Text)
               (\s a -> s { _language = a } :: GlueScriptData s)

instance s ~ s' => P.HasComputedPythonScript (TF.Ref s' (GlueScriptData s)) (TF.Attr s P.Text) where
    computedPythonScript x = TF.compute (TF.refKey x) "_computedPythonScript"

instance s ~ s' => P.HasComputedScalaCode (TF.Ref s' (GlueScriptData s)) (TF.Attr s P.Text) where
    computedScalaCode x = TF.compute (TF.refKey x) "_computedScalaCode"

-- | @aws_iam_account_alias@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_iam_account_alias terraform documentation>
-- for more information.
data IamAccountAliasData s = IamAccountAliasData'
    deriving (P.Show, P.Eq, P.Generic)

iamAccountAliasData
    :: TF.DataSource P.Provider (IamAccountAliasData s)
iamAccountAliasData =
    TF.newDataSource "aws_iam_account_alias" TF.validator $
        IamAccountAliasData'

instance TF.IsObject (IamAccountAliasData s) where
    toObject _ = []

instance TF.IsValid (IamAccountAliasData s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedAccountAlias (TF.Ref s' (IamAccountAliasData s)) (TF.Attr s P.Text) where
    computedAccountAlias x = TF.compute (TF.refKey x) "_computedAccountAlias"

-- | @aws_iam_group@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_iam_group terraform documentation>
-- for more information.
data IamGroupData s = IamGroupData'
    { _groupName :: TF.Attr s P.Text
    -- ^ @group_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

iamGroupData
    :: TF.Attr s P.Text -- ^ @group_name@ - 'P.groupName'
    -> TF.DataSource P.Provider (IamGroupData s)
iamGroupData _groupName =
    TF.newDataSource "aws_iam_group" TF.validator $
        IamGroupData'
            { _groupName = _groupName
            }

instance TF.IsObject (IamGroupData s) where
    toObject IamGroupData'{..} = P.catMaybes
        [ TF.assign "group_name" <$> TF.attribute _groupName
        ]

instance TF.IsValid (IamGroupData s) where
    validator = P.mempty

instance P.HasGroupName (IamGroupData s) (TF.Attr s P.Text) where
    groupName =
        P.lens (_groupName :: IamGroupData s -> TF.Attr s P.Text)
               (\s a -> s { _groupName = a } :: IamGroupData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (IamGroupData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedGroupId (TF.Ref s' (IamGroupData s)) (TF.Attr s P.Text) where
    computedGroupId x = TF.compute (TF.refKey x) "_computedGroupId"

instance s ~ s' => P.HasComputedPath (TF.Ref s' (IamGroupData s)) (TF.Attr s P.Text) where
    computedPath x = TF.compute (TF.refKey x) "_computedPath"

-- | @aws_iam_instance_profile@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_iam_instance_profile terraform documentation>
-- for more information.
data IamInstanceProfileData s = IamInstanceProfileData'
    { _name :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

iamInstanceProfileData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.DataSource P.Provider (IamInstanceProfileData s)
iamInstanceProfileData _name =
    TF.newDataSource "aws_iam_instance_profile" TF.validator $
        IamInstanceProfileData'
            { _name = _name
            }

instance TF.IsObject (IamInstanceProfileData s) where
    toObject IamInstanceProfileData'{..} = P.catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        ]

instance TF.IsValid (IamInstanceProfileData s) where
    validator = P.mempty

instance P.HasName (IamInstanceProfileData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: IamInstanceProfileData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: IamInstanceProfileData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (IamInstanceProfileData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedCreateDate (TF.Ref s' (IamInstanceProfileData s)) (TF.Attr s P.Text) where
    computedCreateDate x = TF.compute (TF.refKey x) "_computedCreateDate"

instance s ~ s' => P.HasComputedPath (TF.Ref s' (IamInstanceProfileData s)) (TF.Attr s P.Text) where
    computedPath x = TF.compute (TF.refKey x) "_computedPath"

instance s ~ s' => P.HasComputedRoleArn (TF.Ref s' (IamInstanceProfileData s)) (TF.Attr s P.Text) where
    computedRoleArn x = TF.compute (TF.refKey x) "_computedRoleArn"

instance s ~ s' => P.HasComputedRoleId (TF.Ref s' (IamInstanceProfileData s)) (TF.Attr s P.Text) where
    computedRoleId x = TF.compute (TF.refKey x) "_computedRoleId"

instance s ~ s' => P.HasComputedRoleName (TF.Ref s' (IamInstanceProfileData s)) (TF.Attr s P.Text) where
    computedRoleName x = TF.compute (TF.refKey x) "_computedRoleName"

-- | @aws_iam_policy@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_iam_policy terraform documentation>
-- for more information.
data IamPolicyData s = IamPolicyData'
    { _arn :: TF.Attr s P.Text
    -- ^ @arn@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

iamPolicyData
    :: TF.Attr s P.Text -- ^ @arn@ - 'P.arn'
    -> TF.DataSource P.Provider (IamPolicyData s)
iamPolicyData _arn =
    TF.newDataSource "aws_iam_policy" TF.validator $
        IamPolicyData'
            { _arn = _arn
            }

instance TF.IsObject (IamPolicyData s) where
    toObject IamPolicyData'{..} = P.catMaybes
        [ TF.assign "arn" <$> TF.attribute _arn
        ]

instance TF.IsValid (IamPolicyData s) where
    validator = P.mempty

instance P.HasArn (IamPolicyData s) (TF.Attr s P.Text) where
    arn =
        P.lens (_arn :: IamPolicyData s -> TF.Attr s P.Text)
               (\s a -> s { _arn = a } :: IamPolicyData s)

instance s ~ s' => P.HasComputedDescription (TF.Ref s' (IamPolicyData s)) (TF.Attr s P.Text) where
    computedDescription x = TF.compute (TF.refKey x) "_computedDescription"

instance s ~ s' => P.HasComputedName (TF.Ref s' (IamPolicyData s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "_computedName"

instance s ~ s' => P.HasComputedPath (TF.Ref s' (IamPolicyData s)) (TF.Attr s P.Text) where
    computedPath x = TF.compute (TF.refKey x) "_computedPath"

instance s ~ s' => P.HasComputedPolicy (TF.Ref s' (IamPolicyData s)) (TF.Attr s P.Document) where
    computedPolicy x = TF.compute (TF.refKey x) "_computedPolicy"

-- | @aws_iam_policy_document@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_iam_policy_document terraform documentation>
-- for more information.
data IamPolicyDocumentData s = IamPolicyDocumentData'
    { _overrideJson :: TF.Attr s P.Text
    -- ^ @override_json@ - (Optional)
    --
    , _policyId     :: TF.Attr s P.Text
    -- ^ @policy_id@ - (Optional)
    --
    , _sourceJson   :: TF.Attr s P.Text
    -- ^ @source_json@ - (Optional)
    --
    , _statement    :: TF.Attr s [TF.Attr s (Statement s)]
    -- ^ @statement@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

iamPolicyDocumentData
    :: TF.Attr s [TF.Attr s (Statement s)] -- ^ @statement@ - 'P.statement'
    -> TF.DataSource P.Provider (IamPolicyDocumentData s)
iamPolicyDocumentData _statement =
    TF.newDataSource "aws_iam_policy_document" TF.validator $
        IamPolicyDocumentData'
            { _overrideJson = TF.Nil
            , _policyId = TF.Nil
            , _sourceJson = TF.Nil
            , _statement = _statement
            }

instance TF.IsObject (IamPolicyDocumentData s) where
    toObject IamPolicyDocumentData'{..} = P.catMaybes
        [ TF.assign "override_json" <$> TF.attribute _overrideJson
        , TF.assign "policy_id" <$> TF.attribute _policyId
        , TF.assign "source_json" <$> TF.attribute _sourceJson
        , TF.assign "statement" <$> TF.attribute _statement
        ]

instance TF.IsValid (IamPolicyDocumentData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_statement"
                  (_statement
                      :: IamPolicyDocumentData s -> TF.Attr s [TF.Attr s (Statement s)])
                  TF.validator

instance P.HasOverrideJson (IamPolicyDocumentData s) (TF.Attr s P.Text) where
    overrideJson =
        P.lens (_overrideJson :: IamPolicyDocumentData s -> TF.Attr s P.Text)
               (\s a -> s { _overrideJson = a } :: IamPolicyDocumentData s)

instance P.HasPolicyId (IamPolicyDocumentData s) (TF.Attr s P.Text) where
    policyId =
        P.lens (_policyId :: IamPolicyDocumentData s -> TF.Attr s P.Text)
               (\s a -> s { _policyId = a } :: IamPolicyDocumentData s)

instance P.HasSourceJson (IamPolicyDocumentData s) (TF.Attr s P.Text) where
    sourceJson =
        P.lens (_sourceJson :: IamPolicyDocumentData s -> TF.Attr s P.Text)
               (\s a -> s { _sourceJson = a } :: IamPolicyDocumentData s)

instance P.HasStatement (IamPolicyDocumentData s) (TF.Attr s [TF.Attr s (Statement s)]) where
    statement =
        P.lens (_statement :: IamPolicyDocumentData s -> TF.Attr s [TF.Attr s (Statement s)])
               (\s a -> s { _statement = a } :: IamPolicyDocumentData s)

instance s ~ s' => P.HasComputedJson (TF.Ref s' (IamPolicyDocumentData s)) (TF.Attr s P.Text) where
    computedJson x = TF.compute (TF.refKey x) "_computedJson"

-- | @aws_iam_role@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_iam_role terraform documentation>
-- for more information.
data IamRoleData s = IamRoleData'
    { _name     :: TF.Attr s P.Text
    -- ^ @name@ - (Optional)
    --
    , _roleName :: TF.Attr s P.Text
    -- ^ @role_name@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

iamRoleData
    :: TF.DataSource P.Provider (IamRoleData s)
iamRoleData =
    TF.newDataSource "aws_iam_role" TF.validator $
        IamRoleData'
            { _name = TF.Nil
            , _roleName = TF.Nil
            }

instance TF.IsObject (IamRoleData s) where
    toObject IamRoleData'{..} = P.catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        , TF.assign "role_name" <$> TF.attribute _roleName
        ]

instance TF.IsValid (IamRoleData s) where
    validator = P.mempty

instance P.HasName (IamRoleData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: IamRoleData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: IamRoleData s)

instance P.HasRoleName (IamRoleData s) (TF.Attr s P.Text) where
    roleName =
        P.lens (_roleName :: IamRoleData s -> TF.Attr s P.Text)
               (\s a -> s { _roleName = a } :: IamRoleData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (IamRoleData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedAssumeRolePolicy (TF.Ref s' (IamRoleData s)) (TF.Attr s P.Document) where
    computedAssumeRolePolicy x = TF.compute (TF.refKey x) "_computedAssumeRolePolicy"

instance s ~ s' => P.HasComputedAssumeRolePolicyDocument (TF.Ref s' (IamRoleData s)) (TF.Attr s P.Text) where
    computedAssumeRolePolicyDocument x = TF.compute (TF.refKey x) "_computedAssumeRolePolicyDocument"

instance s ~ s' => P.HasComputedCreateDate (TF.Ref s' (IamRoleData s)) (TF.Attr s P.Text) where
    computedCreateDate x = TF.compute (TF.refKey x) "_computedCreateDate"

instance s ~ s' => P.HasComputedDescription (TF.Ref s' (IamRoleData s)) (TF.Attr s P.Text) where
    computedDescription x = TF.compute (TF.refKey x) "_computedDescription"

instance s ~ s' => P.HasComputedMaxSessionDuration (TF.Ref s' (IamRoleData s)) (TF.Attr s P.Integer) where
    computedMaxSessionDuration x = TF.compute (TF.refKey x) "_computedMaxSessionDuration"

instance s ~ s' => P.HasComputedPath (TF.Ref s' (IamRoleData s)) (TF.Attr s P.Text) where
    computedPath x = TF.compute (TF.refKey x) "_computedPath"

instance s ~ s' => P.HasComputedPermissionsBoundary (TF.Ref s' (IamRoleData s)) (TF.Attr s P.Text) where
    computedPermissionsBoundary x = TF.compute (TF.refKey x) "_computedPermissionsBoundary"

instance s ~ s' => P.HasComputedRoleId (TF.Ref s' (IamRoleData s)) (TF.Attr s P.Text) where
    computedRoleId x = TF.compute (TF.refKey x) "_computedRoleId"

instance s ~ s' => P.HasComputedUniqueId (TF.Ref s' (IamRoleData s)) (TF.Attr s P.Text) where
    computedUniqueId x = TF.compute (TF.refKey x) "_computedUniqueId"

-- | @aws_iam_server_certificate@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_iam_server_certificate terraform documentation>
-- for more information.
data IamServerCertificateData s = IamServerCertificateData'
    { _latest     :: TF.Attr s P.Bool
    -- ^ @latest@ - (Optional)
    --
    , _namePrefix :: TF.Attr s P.Text
    -- ^ @name_prefix@ - (Optional)
    --
    , _pathPrefix :: TF.Attr s P.Text
    -- ^ @path_prefix@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

iamServerCertificateData
    :: TF.DataSource P.Provider (IamServerCertificateData s)
iamServerCertificateData =
    TF.newDataSource "aws_iam_server_certificate" TF.validator $
        IamServerCertificateData'
            { _latest = TF.value P.False
            , _namePrefix = TF.Nil
            , _pathPrefix = TF.Nil
            }

instance TF.IsObject (IamServerCertificateData s) where
    toObject IamServerCertificateData'{..} = P.catMaybes
        [ TF.assign "latest" <$> TF.attribute _latest
        , TF.assign "name_prefix" <$> TF.attribute _namePrefix
        , TF.assign "path_prefix" <$> TF.attribute _pathPrefix
        ]

instance TF.IsValid (IamServerCertificateData s) where
    validator = P.mempty

instance P.HasLatest (IamServerCertificateData s) (TF.Attr s P.Bool) where
    latest =
        P.lens (_latest :: IamServerCertificateData s -> TF.Attr s P.Bool)
               (\s a -> s { _latest = a } :: IamServerCertificateData s)

instance P.HasNamePrefix (IamServerCertificateData s) (TF.Attr s P.Text) where
    namePrefix =
        P.lens (_namePrefix :: IamServerCertificateData s -> TF.Attr s P.Text)
               (\s a -> s { _namePrefix = a } :: IamServerCertificateData s)

instance P.HasPathPrefix (IamServerCertificateData s) (TF.Attr s P.Text) where
    pathPrefix =
        P.lens (_pathPrefix :: IamServerCertificateData s -> TF.Attr s P.Text)
               (\s a -> s { _pathPrefix = a } :: IamServerCertificateData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (IamServerCertificateData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedCertificateBody (TF.Ref s' (IamServerCertificateData s)) (TF.Attr s P.Text) where
    computedCertificateBody x = TF.compute (TF.refKey x) "_computedCertificateBody"

instance s ~ s' => P.HasComputedCertificateChain (TF.Ref s' (IamServerCertificateData s)) (TF.Attr s P.Text) where
    computedCertificateChain x = TF.compute (TF.refKey x) "_computedCertificateChain"

instance s ~ s' => P.HasComputedExpirationDate (TF.Ref s' (IamServerCertificateData s)) (TF.Attr s P.Text) where
    computedExpirationDate x = TF.compute (TF.refKey x) "_computedExpirationDate"

instance s ~ s' => P.HasComputedName (TF.Ref s' (IamServerCertificateData s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "_computedName"

instance s ~ s' => P.HasComputedPath (TF.Ref s' (IamServerCertificateData s)) (TF.Attr s P.Text) where
    computedPath x = TF.compute (TF.refKey x) "_computedPath"

instance s ~ s' => P.HasComputedUploadDate (TF.Ref s' (IamServerCertificateData s)) (TF.Attr s P.Text) where
    computedUploadDate x = TF.compute (TF.refKey x) "_computedUploadDate"

-- | @aws_iam_user@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_iam_user terraform documentation>
-- for more information.
data IamUserData s = IamUserData'
    { _userName :: TF.Attr s P.Text
    -- ^ @user_name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

iamUserData
    :: TF.Attr s P.Text -- ^ @user_name@ - 'P.userName'
    -> TF.DataSource P.Provider (IamUserData s)
iamUserData _userName =
    TF.newDataSource "aws_iam_user" TF.validator $
        IamUserData'
            { _userName = _userName
            }

instance TF.IsObject (IamUserData s) where
    toObject IamUserData'{..} = P.catMaybes
        [ TF.assign "user_name" <$> TF.attribute _userName
        ]

instance TF.IsValid (IamUserData s) where
    validator = P.mempty

instance P.HasUserName (IamUserData s) (TF.Attr s P.Text) where
    userName =
        P.lens (_userName :: IamUserData s -> TF.Attr s P.Text)
               (\s a -> s { _userName = a } :: IamUserData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (IamUserData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedPath (TF.Ref s' (IamUserData s)) (TF.Attr s P.Text) where
    computedPath x = TF.compute (TF.refKey x) "_computedPath"

instance s ~ s' => P.HasComputedPermissionsBoundary (TF.Ref s' (IamUserData s)) (TF.Attr s P.Text) where
    computedPermissionsBoundary x = TF.compute (TF.refKey x) "_computedPermissionsBoundary"

instance s ~ s' => P.HasComputedUserId (TF.Ref s' (IamUserData s)) (TF.Attr s P.Text) where
    computedUserId x = TF.compute (TF.refKey x) "_computedUserId"

-- | @aws_inspector_rules_packages@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_inspector_rules_packages terraform documentation>
-- for more information.
data InspectorRulesPackagesData s = InspectorRulesPackagesData'
    deriving (P.Show, P.Eq, P.Generic)

inspectorRulesPackagesData
    :: TF.DataSource P.Provider (InspectorRulesPackagesData s)
inspectorRulesPackagesData =
    TF.newDataSource "aws_inspector_rules_packages" TF.validator $
        InspectorRulesPackagesData'

instance TF.IsObject (InspectorRulesPackagesData s) where
    toObject _ = []

instance TF.IsValid (InspectorRulesPackagesData s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedArns (TF.Ref s' (InspectorRulesPackagesData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedArns x = TF.compute (TF.refKey x) "_computedArns"

-- | @aws_instance@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_instance terraform documentation>
-- for more information.
data InstanceData s = InstanceData'
    { _filter          :: TF.Attr s [TF.Attr s (Filter s)]
    -- ^ @filter@ - (Optional)
    --
    , _getPasswordData :: TF.Attr s P.Bool
    -- ^ @get_password_data@ - (Optional)
    --
    , _instanceId      :: TF.Attr s P.Text
    -- ^ @instance_id@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instanceData
    :: TF.DataSource P.Provider (InstanceData s)
instanceData =
    TF.newDataSource "aws_instance" TF.validator $
        InstanceData'
            { _filter = TF.Nil
            , _getPasswordData = TF.value P.False
            , _instanceId = TF.Nil
            }

instance TF.IsObject (InstanceData s) where
    toObject InstanceData'{..} = P.catMaybes
        [ TF.assign "filter" <$> TF.attribute _filter
        , TF.assign "get_password_data" <$> TF.attribute _getPasswordData
        , TF.assign "instance_id" <$> TF.attribute _instanceId
        ]

instance TF.IsValid (InstanceData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filter"
                  (_filter
                      :: InstanceData s -> TF.Attr s [TF.Attr s (Filter s)])
                  TF.validator

instance P.HasFilter (InstanceData s) (TF.Attr s [TF.Attr s (Filter s)]) where
    filter =
        P.lens (_filter :: InstanceData s -> TF.Attr s [TF.Attr s (Filter s)])
               (\s a -> s { _filter = a } :: InstanceData s)

instance P.HasGetPasswordData (InstanceData s) (TF.Attr s P.Bool) where
    getPasswordData =
        P.lens (_getPasswordData :: InstanceData s -> TF.Attr s P.Bool)
               (\s a -> s { _getPasswordData = a } :: InstanceData s)

instance P.HasInstanceId (InstanceData s) (TF.Attr s P.Text) where
    instanceId =
        P.lens (_instanceId :: InstanceData s -> TF.Attr s P.Text)
               (\s a -> s { _instanceId = a } :: InstanceData s)

instance s ~ s' => P.HasComputedAmi (TF.Ref s' (InstanceData s)) (TF.Attr s P.Text) where
    computedAmi x = TF.compute (TF.refKey x) "_computedAmi"

instance s ~ s' => P.HasComputedArn (TF.Ref s' (InstanceData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedAssociatePublicIpAddress (TF.Ref s' (InstanceData s)) (TF.Attr s P.Bool) where
    computedAssociatePublicIpAddress x = TF.compute (TF.refKey x) "_computedAssociatePublicIpAddress"

instance s ~ s' => P.HasComputedAvailabilityZone (TF.Ref s' (InstanceData s)) (TF.Attr s P.Text) where
    computedAvailabilityZone x = TF.compute (TF.refKey x) "_computedAvailabilityZone"

instance s ~ s' => P.HasComputedCreditSpecification (TF.Ref s' (InstanceData s)) (TF.Attr s [TF.Attr s (CreditSpecification s)]) where
    computedCreditSpecification x = TF.compute (TF.refKey x) "_computedCreditSpecification"

instance s ~ s' => P.HasComputedDisableApiTermination (TF.Ref s' (InstanceData s)) (TF.Attr s P.Bool) where
    computedDisableApiTermination x = TF.compute (TF.refKey x) "_computedDisableApiTermination"

instance s ~ s' => P.HasComputedEbsBlockDevice (TF.Ref s' (InstanceData s)) (TF.Attr s [TF.Attr s (EbsBlockDevice s)]) where
    computedEbsBlockDevice x = TF.compute (TF.refKey x) "_computedEbsBlockDevice"

instance s ~ s' => P.HasComputedEbsOptimized (TF.Ref s' (InstanceData s)) (TF.Attr s P.Bool) where
    computedEbsOptimized x = TF.compute (TF.refKey x) "_computedEbsOptimized"

instance s ~ s' => P.HasComputedEphemeralBlockDevice (TF.Ref s' (InstanceData s)) (TF.Attr s [TF.Attr s (EphemeralBlockDevice s)]) where
    computedEphemeralBlockDevice x = TF.compute (TF.refKey x) "_computedEphemeralBlockDevice"

instance s ~ s' => P.HasComputedIamInstanceProfile (TF.Ref s' (InstanceData s)) (TF.Attr s P.Text) where
    computedIamInstanceProfile x = TF.compute (TF.refKey x) "_computedIamInstanceProfile"

instance s ~ s' => P.HasComputedInstanceState (TF.Ref s' (InstanceData s)) (TF.Attr s P.Text) where
    computedInstanceState x = TF.compute (TF.refKey x) "_computedInstanceState"

instance s ~ s' => P.HasComputedInstanceTags (TF.Ref s' (InstanceData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedInstanceTags x = TF.compute (TF.refKey x) "_computedInstanceTags"

instance s ~ s' => P.HasComputedInstanceType (TF.Ref s' (InstanceData s)) (TF.Attr s P.Text) where
    computedInstanceType x = TF.compute (TF.refKey x) "_computedInstanceType"

instance s ~ s' => P.HasComputedKeyName (TF.Ref s' (InstanceData s)) (TF.Attr s P.Text) where
    computedKeyName x = TF.compute (TF.refKey x) "_computedKeyName"

instance s ~ s' => P.HasComputedMonitoring (TF.Ref s' (InstanceData s)) (TF.Attr s P.Bool) where
    computedMonitoring x = TF.compute (TF.refKey x) "_computedMonitoring"

instance s ~ s' => P.HasComputedNetworkInterfaceId (TF.Ref s' (InstanceData s)) (TF.Attr s P.Text) where
    computedNetworkInterfaceId x = TF.compute (TF.refKey x) "_computedNetworkInterfaceId"

instance s ~ s' => P.HasComputedPasswordData (TF.Ref s' (InstanceData s)) (TF.Attr s P.Text) where
    computedPasswordData x = TF.compute (TF.refKey x) "_computedPasswordData"

instance s ~ s' => P.HasComputedPlacementGroup (TF.Ref s' (InstanceData s)) (TF.Attr s P.Text) where
    computedPlacementGroup x = TF.compute (TF.refKey x) "_computedPlacementGroup"

instance s ~ s' => P.HasComputedPrivateDns (TF.Ref s' (InstanceData s)) (TF.Attr s P.Text) where
    computedPrivateDns x = TF.compute (TF.refKey x) "_computedPrivateDns"

instance s ~ s' => P.HasComputedPrivateIp (TF.Ref s' (InstanceData s)) (TF.Attr s P.Text) where
    computedPrivateIp x = TF.compute (TF.refKey x) "_computedPrivateIp"

instance s ~ s' => P.HasComputedPublicDns (TF.Ref s' (InstanceData s)) (TF.Attr s P.Text) where
    computedPublicDns x = TF.compute (TF.refKey x) "_computedPublicDns"

instance s ~ s' => P.HasComputedPublicIp (TF.Ref s' (InstanceData s)) (TF.Attr s P.Text) where
    computedPublicIp x = TF.compute (TF.refKey x) "_computedPublicIp"

instance s ~ s' => P.HasComputedRootBlockDevice (TF.Ref s' (InstanceData s)) (TF.Attr s [TF.Attr s (RootBlockDevice s)]) where
    computedRootBlockDevice x = TF.compute (TF.refKey x) "_computedRootBlockDevice"

instance s ~ s' => P.HasComputedSecurityGroups (TF.Ref s' (InstanceData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedSecurityGroups x = TF.compute (TF.refKey x) "_computedSecurityGroups"

instance s ~ s' => P.HasComputedSourceDestCheck (TF.Ref s' (InstanceData s)) (TF.Attr s P.Bool) where
    computedSourceDestCheck x = TF.compute (TF.refKey x) "_computedSourceDestCheck"

instance s ~ s' => P.HasComputedSubnetId (TF.Ref s' (InstanceData s)) (TF.Attr s P.Text) where
    computedSubnetId x = TF.compute (TF.refKey x) "_computedSubnetId"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (InstanceData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "_computedTags"

instance s ~ s' => P.HasComputedTenancy (TF.Ref s' (InstanceData s)) (TF.Attr s P.Text) where
    computedTenancy x = TF.compute (TF.refKey x) "_computedTenancy"

instance s ~ s' => P.HasComputedUserData (TF.Ref s' (InstanceData s)) (TF.Attr s P.Text) where
    computedUserData x = TF.compute (TF.refKey x) "_computedUserData"

instance s ~ s' => P.HasComputedVpcSecurityGroupIds (TF.Ref s' (InstanceData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedVpcSecurityGroupIds x = TF.compute (TF.refKey x) "_computedVpcSecurityGroupIds"

-- | @aws_instances@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_instances terraform documentation>
-- for more information.
data InstancesData s = InstancesData'
    { _filter             :: TF.Attr s [TF.Attr s (Filter s)]
    -- ^ @filter@ - (Optional)
    --
    , _instanceStateNames :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @instance_state_names@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

instancesData
    :: TF.DataSource P.Provider (InstancesData s)
instancesData =
    TF.newDataSource "aws_instances" TF.validator $
        InstancesData'
            { _filter = TF.Nil
            , _instanceStateNames = TF.Nil
            }

instance TF.IsObject (InstancesData s) where
    toObject InstancesData'{..} = P.catMaybes
        [ TF.assign "filter" <$> TF.attribute _filter
        , TF.assign "instance_state_names" <$> TF.attribute _instanceStateNames
        ]

instance TF.IsValid (InstancesData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filter"
                  (_filter
                      :: InstancesData s -> TF.Attr s [TF.Attr s (Filter s)])
                  TF.validator

instance P.HasFilter (InstancesData s) (TF.Attr s [TF.Attr s (Filter s)]) where
    filter =
        P.lens (_filter :: InstancesData s -> TF.Attr s [TF.Attr s (Filter s)])
               (\s a -> s { _filter = a } :: InstancesData s)

instance P.HasInstanceStateNames (InstancesData s) (TF.Attr s [TF.Attr s P.Text]) where
    instanceStateNames =
        P.lens (_instanceStateNames :: InstancesData s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _instanceStateNames = a } :: InstancesData s)

instance s ~ s' => P.HasComputedIds (TF.Ref s' (InstancesData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedIds x = TF.compute (TF.refKey x) "_computedIds"

instance s ~ s' => P.HasComputedInstanceTags (TF.Ref s' (InstancesData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedInstanceTags x = TF.compute (TF.refKey x) "_computedInstanceTags"

instance s ~ s' => P.HasComputedPrivateIps (TF.Ref s' (InstancesData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedPrivateIps x = TF.compute (TF.refKey x) "_computedPrivateIps"

instance s ~ s' => P.HasComputedPublicIps (TF.Ref s' (InstancesData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedPublicIps x = TF.compute (TF.refKey x) "_computedPublicIps"

-- | @aws_internet_gateway@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_internet_gateway terraform documentation>
-- for more information.
data InternetGatewayData s = InternetGatewayData'
    { _filter :: TF.Attr s [TF.Attr s (Filter s)]
    -- ^ @filter@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

internetGatewayData
    :: TF.DataSource P.Provider (InternetGatewayData s)
internetGatewayData =
    TF.newDataSource "aws_internet_gateway" TF.validator $
        InternetGatewayData'
            { _filter = TF.Nil
            }

instance TF.IsObject (InternetGatewayData s) where
    toObject InternetGatewayData'{..} = P.catMaybes
        [ TF.assign "filter" <$> TF.attribute _filter
        ]

instance TF.IsValid (InternetGatewayData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filter"
                  (_filter
                      :: InternetGatewayData s -> TF.Attr s [TF.Attr s (Filter s)])
                  TF.validator

instance P.HasFilter (InternetGatewayData s) (TF.Attr s [TF.Attr s (Filter s)]) where
    filter =
        P.lens (_filter :: InternetGatewayData s -> TF.Attr s [TF.Attr s (Filter s)])
               (\s a -> s { _filter = a } :: InternetGatewayData s)

instance s ~ s' => P.HasComputedAttachments (TF.Ref s' (InternetGatewayData s)) (TF.Attr s [TF.Attr s (Attachments s)]) where
    computedAttachments x = TF.compute (TF.refKey x) "_computedAttachments"

instance s ~ s' => P.HasComputedInternetGatewayId (TF.Ref s' (InternetGatewayData s)) (TF.Attr s P.Text) where
    computedInternetGatewayId x = TF.compute (TF.refKey x) "_computedInternetGatewayId"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (InternetGatewayData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "_computedTags"

-- | @aws_iot_endpoint@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_iot_endpoint terraform documentation>
-- for more information.
data IotEndpointData s = IotEndpointData'
    deriving (P.Show, P.Eq, P.Generic)

iotEndpointData
    :: TF.DataSource P.Provider (IotEndpointData s)
iotEndpointData =
    TF.newDataSource "aws_iot_endpoint" TF.validator $
        IotEndpointData'

instance TF.IsObject (IotEndpointData s) where
    toObject _ = []

instance TF.IsValid (IotEndpointData s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedEndpointAddress (TF.Ref s' (IotEndpointData s)) (TF.Attr s P.Text) where
    computedEndpointAddress x = TF.compute (TF.refKey x) "_computedEndpointAddress"

-- | @aws_ip_ranges@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_ip_ranges terraform documentation>
-- for more information.
data IpRangesData s = IpRangesData'
    { _regions  :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @regions@ - (Optional)
    --
    , _services :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @services@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

ipRangesData
    :: TF.Attr s [TF.Attr s P.Text] -- ^ @services@ - 'P.services'
    -> TF.DataSource P.Provider (IpRangesData s)
ipRangesData _services =
    TF.newDataSource "aws_ip_ranges" TF.validator $
        IpRangesData'
            { _regions = TF.Nil
            , _services = _services
            }

instance TF.IsObject (IpRangesData s) where
    toObject IpRangesData'{..} = P.catMaybes
        [ TF.assign "regions" <$> TF.attribute _regions
        , TF.assign "services" <$> TF.attribute _services
        ]

instance TF.IsValid (IpRangesData s) where
    validator = P.mempty

instance P.HasRegions (IpRangesData s) (TF.Attr s [TF.Attr s P.Text]) where
    regions =
        P.lens (_regions :: IpRangesData s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _regions = a } :: IpRangesData s)

instance P.HasServices (IpRangesData s) (TF.Attr s [TF.Attr s P.Text]) where
    services =
        P.lens (_services :: IpRangesData s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _services = a } :: IpRangesData s)

instance s ~ s' => P.HasComputedCidrBlocks (TF.Ref s' (IpRangesData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedCidrBlocks x = TF.compute (TF.refKey x) "_computedCidrBlocks"

instance s ~ s' => P.HasComputedCreateDate (TF.Ref s' (IpRangesData s)) (TF.Attr s P.Text) where
    computedCreateDate x = TF.compute (TF.refKey x) "_computedCreateDate"

instance s ~ s' => P.HasComputedSyncToken (TF.Ref s' (IpRangesData s)) (TF.Attr s P.Integer) where
    computedSyncToken x = TF.compute (TF.refKey x) "_computedSyncToken"

-- | @aws_kinesis_stream@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_kinesis_stream terraform documentation>
-- for more information.
data KinesisStreamData s = KinesisStreamData'
    { _name :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

kinesisStreamData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.DataSource P.Provider (KinesisStreamData s)
kinesisStreamData _name =
    TF.newDataSource "aws_kinesis_stream" TF.validator $
        KinesisStreamData'
            { _name = _name
            }

instance TF.IsObject (KinesisStreamData s) where
    toObject KinesisStreamData'{..} = P.catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        ]

instance TF.IsValid (KinesisStreamData s) where
    validator = P.mempty

instance P.HasName (KinesisStreamData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: KinesisStreamData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: KinesisStreamData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (KinesisStreamData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedClosedShards (TF.Ref s' (KinesisStreamData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedClosedShards x = TF.compute (TF.refKey x) "_computedClosedShards"

instance s ~ s' => P.HasComputedCreationTimestamp (TF.Ref s' (KinesisStreamData s)) (TF.Attr s P.Integer) where
    computedCreationTimestamp x = TF.compute (TF.refKey x) "_computedCreationTimestamp"

instance s ~ s' => P.HasComputedOpenShards (TF.Ref s' (KinesisStreamData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedOpenShards x = TF.compute (TF.refKey x) "_computedOpenShards"

instance s ~ s' => P.HasComputedRetentionPeriod (TF.Ref s' (KinesisStreamData s)) (TF.Attr s P.Integer) where
    computedRetentionPeriod x = TF.compute (TF.refKey x) "_computedRetentionPeriod"

instance s ~ s' => P.HasComputedShardLevelMetrics (TF.Ref s' (KinesisStreamData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedShardLevelMetrics x = TF.compute (TF.refKey x) "_computedShardLevelMetrics"

instance s ~ s' => P.HasComputedStatus (TF.Ref s' (KinesisStreamData s)) (TF.Attr s P.Text) where
    computedStatus x = TF.compute (TF.refKey x) "_computedStatus"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (KinesisStreamData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "_computedTags"

-- | @aws_kms_alias@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_kms_alias terraform documentation>
-- for more information.
data KmsAliasData s = KmsAliasData'
    { _name :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

kmsAliasData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.DataSource P.Provider (KmsAliasData s)
kmsAliasData _name =
    TF.newDataSource "aws_kms_alias" TF.validator $
        KmsAliasData'
            { _name = _name
            }

instance TF.IsObject (KmsAliasData s) where
    toObject KmsAliasData'{..} = P.catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        ]

instance TF.IsValid (KmsAliasData s) where
    validator = P.mempty

instance P.HasName (KmsAliasData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: KmsAliasData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: KmsAliasData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (KmsAliasData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedTargetKeyArn (TF.Ref s' (KmsAliasData s)) (TF.Attr s P.Text) where
    computedTargetKeyArn x = TF.compute (TF.refKey x) "_computedTargetKeyArn"

instance s ~ s' => P.HasComputedTargetKeyId (TF.Ref s' (KmsAliasData s)) (TF.Attr s P.Text) where
    computedTargetKeyId x = TF.compute (TF.refKey x) "_computedTargetKeyId"

-- | @aws_kms_ciphertext@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_kms_ciphertext terraform documentation>
-- for more information.
data KmsCiphertextData s = KmsCiphertextData'
    { _context   :: TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))
    -- ^ @context@ - (Optional)
    --
    , _keyId     :: TF.Attr s P.Text
    -- ^ @key_id@ - (Required)
    --
    , _plaintext :: TF.Attr s P.Text
    -- ^ @plaintext@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

kmsCiphertextData
    :: TF.Attr s P.Text -- ^ @key_id@ - 'P.keyId'
    -> TF.Attr s P.Text -- ^ @plaintext@ - 'P.plaintext'
    -> TF.DataSource P.Provider (KmsCiphertextData s)
kmsCiphertextData _keyId _plaintext =
    TF.newDataSource "aws_kms_ciphertext" TF.validator $
        KmsCiphertextData'
            { _context = TF.Nil
            , _keyId = _keyId
            , _plaintext = _plaintext
            }

instance TF.IsObject (KmsCiphertextData s) where
    toObject KmsCiphertextData'{..} = P.catMaybes
        [ TF.assign "context" <$> TF.attribute _context
        , TF.assign "key_id" <$> TF.attribute _keyId
        , TF.assign "plaintext" <$> TF.attribute _plaintext
        ]

instance TF.IsValid (KmsCiphertextData s) where
    validator = P.mempty

instance P.HasContext (KmsCiphertextData s) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    context =
        P.lens (_context :: KmsCiphertextData s -> TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text)))
               (\s a -> s { _context = a } :: KmsCiphertextData s)

instance P.HasKeyId (KmsCiphertextData s) (TF.Attr s P.Text) where
    keyId =
        P.lens (_keyId :: KmsCiphertextData s -> TF.Attr s P.Text)
               (\s a -> s { _keyId = a } :: KmsCiphertextData s)

instance P.HasPlaintext (KmsCiphertextData s) (TF.Attr s P.Text) where
    plaintext =
        P.lens (_plaintext :: KmsCiphertextData s -> TF.Attr s P.Text)
               (\s a -> s { _plaintext = a } :: KmsCiphertextData s)

instance s ~ s' => P.HasComputedCiphertextBlob (TF.Ref s' (KmsCiphertextData s)) (TF.Attr s P.Text) where
    computedCiphertextBlob x = TF.compute (TF.refKey x) "_computedCiphertextBlob"

-- | @aws_kms_key@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_kms_key terraform documentation>
-- for more information.
data KmsKeyData s = KmsKeyData'
    { _grantTokens :: TF.Attr s [TF.Attr s P.Text]
    -- ^ @grant_tokens@ - (Optional)
    --
    , _keyId       :: TF.Attr s P.Text
    -- ^ @key_id@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

kmsKeyData
    :: TF.Attr s P.Text -- ^ @key_id@ - 'P.keyId'
    -> TF.DataSource P.Provider (KmsKeyData s)
kmsKeyData _keyId =
    TF.newDataSource "aws_kms_key" TF.validator $
        KmsKeyData'
            { _grantTokens = TF.Nil
            , _keyId = _keyId
            }

instance TF.IsObject (KmsKeyData s) where
    toObject KmsKeyData'{..} = P.catMaybes
        [ TF.assign "grant_tokens" <$> TF.attribute _grantTokens
        , TF.assign "key_id" <$> TF.attribute _keyId
        ]

instance TF.IsValid (KmsKeyData s) where
    validator = P.mempty

instance P.HasGrantTokens (KmsKeyData s) (TF.Attr s [TF.Attr s P.Text]) where
    grantTokens =
        P.lens (_grantTokens :: KmsKeyData s -> TF.Attr s [TF.Attr s P.Text])
               (\s a -> s { _grantTokens = a } :: KmsKeyData s)

instance P.HasKeyId (KmsKeyData s) (TF.Attr s P.Text) where
    keyId =
        P.lens (_keyId :: KmsKeyData s -> TF.Attr s P.Text)
               (\s a -> s { _keyId = a } :: KmsKeyData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (KmsKeyData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedAwsAccountId (TF.Ref s' (KmsKeyData s)) (TF.Attr s P.Text) where
    computedAwsAccountId x = TF.compute (TF.refKey x) "_computedAwsAccountId"

instance s ~ s' => P.HasComputedCreationDate (TF.Ref s' (KmsKeyData s)) (TF.Attr s P.Text) where
    computedCreationDate x = TF.compute (TF.refKey x) "_computedCreationDate"

instance s ~ s' => P.HasComputedDeletionDate (TF.Ref s' (KmsKeyData s)) (TF.Attr s P.Text) where
    computedDeletionDate x = TF.compute (TF.refKey x) "_computedDeletionDate"

instance s ~ s' => P.HasComputedDescription (TF.Ref s' (KmsKeyData s)) (TF.Attr s P.Text) where
    computedDescription x = TF.compute (TF.refKey x) "_computedDescription"

instance s ~ s' => P.HasComputedEnabled (TF.Ref s' (KmsKeyData s)) (TF.Attr s P.Bool) where
    computedEnabled x = TF.compute (TF.refKey x) "_computedEnabled"

instance s ~ s' => P.HasComputedExpirationModel (TF.Ref s' (KmsKeyData s)) (TF.Attr s P.Text) where
    computedExpirationModel x = TF.compute (TF.refKey x) "_computedExpirationModel"

instance s ~ s' => P.HasComputedKeyManager (TF.Ref s' (KmsKeyData s)) (TF.Attr s P.Text) where
    computedKeyManager x = TF.compute (TF.refKey x) "_computedKeyManager"

instance s ~ s' => P.HasComputedKeyState (TF.Ref s' (KmsKeyData s)) (TF.Attr s P.Text) where
    computedKeyState x = TF.compute (TF.refKey x) "_computedKeyState"

instance s ~ s' => P.HasComputedKeyUsage (TF.Ref s' (KmsKeyData s)) (TF.Attr s P.Text) where
    computedKeyUsage x = TF.compute (TF.refKey x) "_computedKeyUsage"

instance s ~ s' => P.HasComputedOrigin (TF.Ref s' (KmsKeyData s)) (TF.Attr s P.Text) where
    computedOrigin x = TF.compute (TF.refKey x) "_computedOrigin"

instance s ~ s' => P.HasComputedValidTo (TF.Ref s' (KmsKeyData s)) (TF.Attr s P.Text) where
    computedValidTo x = TF.compute (TF.refKey x) "_computedValidTo"

-- | @aws_kms_secret@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_kms_secret terraform documentation>
-- for more information.
data KmsSecretData s = KmsSecretData'
    { _hasDynamicAttributes :: TF.Attr s P.Text
    -- ^ @__has_dynamic_attributes@ - (Optional)
    --
    , _secret               :: TF.Attr s [TF.Attr s (Secret s)]
    -- ^ @secret@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

kmsSecretData
    :: TF.Attr s [TF.Attr s (Secret s)] -- ^ @secret@ - 'P.secret'
    -> TF.DataSource P.Provider (KmsSecretData s)
kmsSecretData _secret =
    TF.newDataSource "aws_kms_secret" TF.validator $
        KmsSecretData'
            { _hasDynamicAttributes = TF.Nil
            , _secret = _secret
            }

instance TF.IsObject (KmsSecretData s) where
    toObject KmsSecretData'{..} = P.catMaybes
        [ TF.assign "__has_dynamic_attributes" <$> TF.attribute _hasDynamicAttributes
        , TF.assign "secret" <$> TF.attribute _secret
        ]

instance TF.IsValid (KmsSecretData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_secret"
                  (_secret
                      :: KmsSecretData s -> TF.Attr s [TF.Attr s (Secret s)])
                  TF.validator

instance P.HasHasDynamicAttributes (KmsSecretData s) (TF.Attr s P.Text) where
    hasDynamicAttributes =
        P.lens (_hasDynamicAttributes :: KmsSecretData s -> TF.Attr s P.Text)
               (\s a -> s { _hasDynamicAttributes = a } :: KmsSecretData s)

instance P.HasSecret (KmsSecretData s) (TF.Attr s [TF.Attr s (Secret s)]) where
    secret =
        P.lens (_secret :: KmsSecretData s -> TF.Attr s [TF.Attr s (Secret s)])
               (\s a -> s { _secret = a } :: KmsSecretData s)

-- | @aws_kms_secrets@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_kms_secrets terraform documentation>
-- for more information.
data KmsSecretsData s = KmsSecretsData'
    { _secret :: TF.Attr s [TF.Attr s (Secret s)]
    -- ^ @secret@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

kmsSecretsData
    :: TF.Attr s [TF.Attr s (Secret s)] -- ^ @secret@ - 'P.secret'
    -> TF.DataSource P.Provider (KmsSecretsData s)
kmsSecretsData _secret =
    TF.newDataSource "aws_kms_secrets" TF.validator $
        KmsSecretsData'
            { _secret = _secret
            }

instance TF.IsObject (KmsSecretsData s) where
    toObject KmsSecretsData'{..} = P.catMaybes
        [ TF.assign "secret" <$> TF.attribute _secret
        ]

instance TF.IsValid (KmsSecretsData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_secret"
                  (_secret
                      :: KmsSecretsData s -> TF.Attr s [TF.Attr s (Secret s)])
                  TF.validator

instance P.HasSecret (KmsSecretsData s) (TF.Attr s [TF.Attr s (Secret s)]) where
    secret =
        P.lens (_secret :: KmsSecretsData s -> TF.Attr s [TF.Attr s (Secret s)])
               (\s a -> s { _secret = a } :: KmsSecretsData s)

instance s ~ s' => P.HasComputedPlaintext (TF.Ref s' (KmsSecretsData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedPlaintext x = TF.compute (TF.refKey x) "_computedPlaintext"

-- | @aws_lambda_function@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_lambda_function terraform documentation>
-- for more information.
data LambdaFunctionData s = LambdaFunctionData'
    { _functionName :: TF.Attr s P.Text
    -- ^ @function_name@ - (Required)
    --
    , _qualifier    :: TF.Attr s P.Text
    -- ^ @qualifier@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

lambdaFunctionData
    :: TF.Attr s P.Text -- ^ @function_name@ - 'P.functionName'
    -> TF.DataSource P.Provider (LambdaFunctionData s)
lambdaFunctionData _functionName =
    TF.newDataSource "aws_lambda_function" TF.validator $
        LambdaFunctionData'
            { _functionName = _functionName
            , _qualifier = TF.value "$LATEST"
            }

instance TF.IsObject (LambdaFunctionData s) where
    toObject LambdaFunctionData'{..} = P.catMaybes
        [ TF.assign "function_name" <$> TF.attribute _functionName
        , TF.assign "qualifier" <$> TF.attribute _qualifier
        ]

instance TF.IsValid (LambdaFunctionData s) where
    validator = P.mempty

instance P.HasFunctionName (LambdaFunctionData s) (TF.Attr s P.Text) where
    functionName =
        P.lens (_functionName :: LambdaFunctionData s -> TF.Attr s P.Text)
               (\s a -> s { _functionName = a } :: LambdaFunctionData s)

instance P.HasQualifier (LambdaFunctionData s) (TF.Attr s P.Text) where
    qualifier =
        P.lens (_qualifier :: LambdaFunctionData s -> TF.Attr s P.Text)
               (\s a -> s { _qualifier = a } :: LambdaFunctionData s)

instance s ~ s' => P.HasComputedArn (TF.Ref s' (LambdaFunctionData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedDeadLetterConfig (TF.Ref s' (LambdaFunctionData s)) (TF.Attr s (DeadLetterConfig s)) where
    computedDeadLetterConfig x = TF.compute (TF.refKey x) "_computedDeadLetterConfig"

instance s ~ s' => P.HasComputedDescription (TF.Ref s' (LambdaFunctionData s)) (TF.Attr s P.Text) where
    computedDescription x = TF.compute (TF.refKey x) "_computedDescription"

instance s ~ s' => P.HasComputedEnvironment (TF.Ref s' (LambdaFunctionData s)) (TF.Attr s (Environment s)) where
    computedEnvironment x = TF.compute (TF.refKey x) "_computedEnvironment"

instance s ~ s' => P.HasComputedHandler (TF.Ref s' (LambdaFunctionData s)) (TF.Attr s P.Text) where
    computedHandler x = TF.compute (TF.refKey x) "_computedHandler"

instance s ~ s' => P.HasComputedInvokeArn (TF.Ref s' (LambdaFunctionData s)) (TF.Attr s P.Text) where
    computedInvokeArn x = TF.compute (TF.refKey x) "_computedInvokeArn"

instance s ~ s' => P.HasComputedKmsKeyArn (TF.Ref s' (LambdaFunctionData s)) (TF.Attr s P.Text) where
    computedKmsKeyArn x = TF.compute (TF.refKey x) "_computedKmsKeyArn"

instance s ~ s' => P.HasComputedLastModified (TF.Ref s' (LambdaFunctionData s)) (TF.Attr s P.Text) where
    computedLastModified x = TF.compute (TF.refKey x) "_computedLastModified"

instance s ~ s' => P.HasComputedMemorySize (TF.Ref s' (LambdaFunctionData s)) (TF.Attr s P.Integer) where
    computedMemorySize x = TF.compute (TF.refKey x) "_computedMemorySize"

instance s ~ s' => P.HasComputedQualifiedArn (TF.Ref s' (LambdaFunctionData s)) (TF.Attr s P.Text) where
    computedQualifiedArn x = TF.compute (TF.refKey x) "_computedQualifiedArn"

instance s ~ s' => P.HasComputedReservedConcurrentExecutions (TF.Ref s' (LambdaFunctionData s)) (TF.Attr s P.Integer) where
    computedReservedConcurrentExecutions x = TF.compute (TF.refKey x) "_computedReservedConcurrentExecutions"

instance s ~ s' => P.HasComputedRole (TF.Ref s' (LambdaFunctionData s)) (TF.Attr s P.Text) where
    computedRole x = TF.compute (TF.refKey x) "_computedRole"

instance s ~ s' => P.HasComputedRuntime (TF.Ref s' (LambdaFunctionData s)) (TF.Attr s P.Text) where
    computedRuntime x = TF.compute (TF.refKey x) "_computedRuntime"

instance s ~ s' => P.HasComputedSourceCodeHash (TF.Ref s' (LambdaFunctionData s)) (TF.Attr s P.Text) where
    computedSourceCodeHash x = TF.compute (TF.refKey x) "_computedSourceCodeHash"

instance s ~ s' => P.HasComputedSourceCodeSize (TF.Ref s' (LambdaFunctionData s)) (TF.Attr s P.Integer) where
    computedSourceCodeSize x = TF.compute (TF.refKey x) "_computedSourceCodeSize"

instance s ~ s' => P.HasComputedTimeout (TF.Ref s' (LambdaFunctionData s)) (TF.Attr s P.Integer) where
    computedTimeout x = TF.compute (TF.refKey x) "_computedTimeout"

instance s ~ s' => P.HasComputedTracingConfig (TF.Ref s' (LambdaFunctionData s)) (TF.Attr s (TracingConfig s)) where
    computedTracingConfig x = TF.compute (TF.refKey x) "_computedTracingConfig"

instance s ~ s' => P.HasComputedVersion (TF.Ref s' (LambdaFunctionData s)) (TF.Attr s P.Text) where
    computedVersion x = TF.compute (TF.refKey x) "_computedVersion"

instance s ~ s' => P.HasComputedVpcConfig (TF.Ref s' (LambdaFunctionData s)) (TF.Attr s (VpcConfig s)) where
    computedVpcConfig x = TF.compute (TF.refKey x) "_computedVpcConfig"

-- | @aws_lambda_invocation@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_lambda_invocation terraform documentation>
-- for more information.
data LambdaInvocationData s = LambdaInvocationData'
    { _functionName :: TF.Attr s P.Text
    -- ^ @function_name@ - (Required)
    --
    , _input        :: TF.Attr s P.Text
    -- ^ @input@ - (Required)
    --
    , _qualifier    :: TF.Attr s P.Text
    -- ^ @qualifier@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

lambdaInvocationData
    :: TF.Attr s P.Text -- ^ @function_name@ - 'P.functionName'
    -> TF.Attr s P.Text -- ^ @input@ - 'P.input'
    -> TF.DataSource P.Provider (LambdaInvocationData s)
lambdaInvocationData _functionName _input =
    TF.newDataSource "aws_lambda_invocation" TF.validator $
        LambdaInvocationData'
            { _functionName = _functionName
            , _input = _input
            , _qualifier = TF.value "$LATEST"
            }

instance TF.IsObject (LambdaInvocationData s) where
    toObject LambdaInvocationData'{..} = P.catMaybes
        [ TF.assign "function_name" <$> TF.attribute _functionName
        , TF.assign "input" <$> TF.attribute _input
        , TF.assign "qualifier" <$> TF.attribute _qualifier
        ]

instance TF.IsValid (LambdaInvocationData s) where
    validator = P.mempty

instance P.HasFunctionName (LambdaInvocationData s) (TF.Attr s P.Text) where
    functionName =
        P.lens (_functionName :: LambdaInvocationData s -> TF.Attr s P.Text)
               (\s a -> s { _functionName = a } :: LambdaInvocationData s)

instance P.HasInput (LambdaInvocationData s) (TF.Attr s P.Text) where
    input =
        P.lens (_input :: LambdaInvocationData s -> TF.Attr s P.Text)
               (\s a -> s { _input = a } :: LambdaInvocationData s)

instance P.HasQualifier (LambdaInvocationData s) (TF.Attr s P.Text) where
    qualifier =
        P.lens (_qualifier :: LambdaInvocationData s -> TF.Attr s P.Text)
               (\s a -> s { _qualifier = a } :: LambdaInvocationData s)

instance s ~ s' => P.HasComputedResult (TF.Ref s' (LambdaInvocationData s)) (TF.Attr s P.Text) where
    computedResult x = TF.compute (TF.refKey x) "_computedResult"

instance s ~ s' => P.HasComputedResultMap (TF.Ref s' (LambdaInvocationData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedResultMap x = TF.compute (TF.refKey x) "_computedResultMap"

-- | @aws_launch_configuration@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_launch_configuration terraform documentation>
-- for more information.
data LaunchConfigurationData s = LaunchConfigurationData'
    { _name :: TF.Attr s P.Text
    -- ^ @name@ - (Required)
    --
    } deriving (P.Show, P.Eq, P.Generic)

launchConfigurationData
    :: TF.Attr s P.Text -- ^ @name@ - 'P.name'
    -> TF.DataSource P.Provider (LaunchConfigurationData s)
launchConfigurationData _name =
    TF.newDataSource "aws_launch_configuration" TF.validator $
        LaunchConfigurationData'
            { _name = _name
            }

instance TF.IsObject (LaunchConfigurationData s) where
    toObject LaunchConfigurationData'{..} = P.catMaybes
        [ TF.assign "name" <$> TF.attribute _name
        ]

instance TF.IsValid (LaunchConfigurationData s) where
    validator = P.mempty

instance P.HasName (LaunchConfigurationData s) (TF.Attr s P.Text) where
    name =
        P.lens (_name :: LaunchConfigurationData s -> TF.Attr s P.Text)
               (\s a -> s { _name = a } :: LaunchConfigurationData s)

instance s ~ s' => P.HasComputedAssociatePublicIpAddress (TF.Ref s' (LaunchConfigurationData s)) (TF.Attr s P.Bool) where
    computedAssociatePublicIpAddress x = TF.compute (TF.refKey x) "_computedAssociatePublicIpAddress"

instance s ~ s' => P.HasComputedEbsBlockDevice (TF.Ref s' (LaunchConfigurationData s)) (TF.Attr s [TF.Attr s (EbsBlockDevice s)]) where
    computedEbsBlockDevice x = TF.compute (TF.refKey x) "_computedEbsBlockDevice"

instance s ~ s' => P.HasComputedEbsOptimized (TF.Ref s' (LaunchConfigurationData s)) (TF.Attr s P.Bool) where
    computedEbsOptimized x = TF.compute (TF.refKey x) "_computedEbsOptimized"

instance s ~ s' => P.HasComputedEnableMonitoring (TF.Ref s' (LaunchConfigurationData s)) (TF.Attr s P.Bool) where
    computedEnableMonitoring x = TF.compute (TF.refKey x) "_computedEnableMonitoring"

instance s ~ s' => P.HasComputedEphemeralBlockDevice (TF.Ref s' (LaunchConfigurationData s)) (TF.Attr s [TF.Attr s (EphemeralBlockDevice s)]) where
    computedEphemeralBlockDevice x = TF.compute (TF.refKey x) "_computedEphemeralBlockDevice"

instance s ~ s' => P.HasComputedIamInstanceProfile (TF.Ref s' (LaunchConfigurationData s)) (TF.Attr s P.Text) where
    computedIamInstanceProfile x = TF.compute (TF.refKey x) "_computedIamInstanceProfile"

instance s ~ s' => P.HasComputedImageId (TF.Ref s' (LaunchConfigurationData s)) (TF.Attr s P.Text) where
    computedImageId x = TF.compute (TF.refKey x) "_computedImageId"

instance s ~ s' => P.HasComputedInstanceType (TF.Ref s' (LaunchConfigurationData s)) (TF.Attr s P.Text) where
    computedInstanceType x = TF.compute (TF.refKey x) "_computedInstanceType"

instance s ~ s' => P.HasComputedKeyName (TF.Ref s' (LaunchConfigurationData s)) (TF.Attr s P.Text) where
    computedKeyName x = TF.compute (TF.refKey x) "_computedKeyName"

instance s ~ s' => P.HasComputedPlacementTenancy (TF.Ref s' (LaunchConfigurationData s)) (TF.Attr s P.Text) where
    computedPlacementTenancy x = TF.compute (TF.refKey x) "_computedPlacementTenancy"

instance s ~ s' => P.HasComputedRootBlockDevice (TF.Ref s' (LaunchConfigurationData s)) (TF.Attr s [TF.Attr s (RootBlockDevice s)]) where
    computedRootBlockDevice x = TF.compute (TF.refKey x) "_computedRootBlockDevice"

instance s ~ s' => P.HasComputedSecurityGroups (TF.Ref s' (LaunchConfigurationData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedSecurityGroups x = TF.compute (TF.refKey x) "_computedSecurityGroups"

instance s ~ s' => P.HasComputedSpotPrice (TF.Ref s' (LaunchConfigurationData s)) (TF.Attr s P.Text) where
    computedSpotPrice x = TF.compute (TF.refKey x) "_computedSpotPrice"

instance s ~ s' => P.HasComputedUserData (TF.Ref s' (LaunchConfigurationData s)) (TF.Attr s P.Text) where
    computedUserData x = TF.compute (TF.refKey x) "_computedUserData"

instance s ~ s' => P.HasComputedVpcClassicLinkId (TF.Ref s' (LaunchConfigurationData s)) (TF.Attr s P.Text) where
    computedVpcClassicLinkId x = TF.compute (TF.refKey x) "_computedVpcClassicLinkId"

instance s ~ s' => P.HasComputedVpcClassicLinkSecurityGroups (TF.Ref s' (LaunchConfigurationData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedVpcClassicLinkSecurityGroups x = TF.compute (TF.refKey x) "_computedVpcClassicLinkSecurityGroups"

-- | @aws_lb@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_lb terraform documentation>
-- for more information.
data LbData s = LbData'
    deriving (P.Show, P.Eq, P.Generic)

lbData
    :: TF.DataSource P.Provider (LbData s)
lbData =
    TF.newDataSource "aws_lb" TF.validator $
        LbData'

instance TF.IsObject (LbData s) where
    toObject _ = []

instance TF.IsValid (LbData s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedAccessLogs (TF.Ref s' (LbData s)) (TF.Attr s (AccessLogs s)) where
    computedAccessLogs x = TF.compute (TF.refKey x) "_computedAccessLogs"

instance s ~ s' => P.HasComputedArn (TF.Ref s' (LbData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedArnSuffix (TF.Ref s' (LbData s)) (TF.Attr s P.Text) where
    computedArnSuffix x = TF.compute (TF.refKey x) "_computedArnSuffix"

instance s ~ s' => P.HasComputedDnsName (TF.Ref s' (LbData s)) (TF.Attr s P.Text) where
    computedDnsName x = TF.compute (TF.refKey x) "_computedDnsName"

instance s ~ s' => P.HasComputedEnableDeletionProtection (TF.Ref s' (LbData s)) (TF.Attr s P.Bool) where
    computedEnableDeletionProtection x = TF.compute (TF.refKey x) "_computedEnableDeletionProtection"

instance s ~ s' => P.HasComputedIdleTimeout (TF.Ref s' (LbData s)) (TF.Attr s P.Integer) where
    computedIdleTimeout x = TF.compute (TF.refKey x) "_computedIdleTimeout"

instance s ~ s' => P.HasComputedInternal (TF.Ref s' (LbData s)) (TF.Attr s P.Bool) where
    computedInternal x = TF.compute (TF.refKey x) "_computedInternal"

instance s ~ s' => P.HasComputedLoadBalancerType (TF.Ref s' (LbData s)) (TF.Attr s P.Text) where
    computedLoadBalancerType x = TF.compute (TF.refKey x) "_computedLoadBalancerType"

instance s ~ s' => P.HasComputedName (TF.Ref s' (LbData s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "_computedName"

instance s ~ s' => P.HasComputedSecurityGroups (TF.Ref s' (LbData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedSecurityGroups x = TF.compute (TF.refKey x) "_computedSecurityGroups"

instance s ~ s' => P.HasComputedSubnetMapping (TF.Ref s' (LbData s)) (TF.Attr s [TF.Attr s (SubnetMapping s)]) where
    computedSubnetMapping x = TF.compute (TF.refKey x) "_computedSubnetMapping"

instance s ~ s' => P.HasComputedSubnets (TF.Ref s' (LbData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedSubnets x = TF.compute (TF.refKey x) "_computedSubnets"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (LbData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "_computedTags"

instance s ~ s' => P.HasComputedVpcId (TF.Ref s' (LbData s)) (TF.Attr s P.Text) where
    computedVpcId x = TF.compute (TF.refKey x) "_computedVpcId"

instance s ~ s' => P.HasComputedZoneId (TF.Ref s' (LbData s)) (TF.Attr s P.Text) where
    computedZoneId x = TF.compute (TF.refKey x) "_computedZoneId"

-- | @aws_lb_listener@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_lb_listener terraform documentation>
-- for more information.
data LbListenerData s = LbListenerData'
    deriving (P.Show, P.Eq, P.Generic)

lbListenerData
    :: TF.DataSource P.Provider (LbListenerData s)
lbListenerData =
    TF.newDataSource "aws_lb_listener" TF.validator $
        LbListenerData'

instance TF.IsObject (LbListenerData s) where
    toObject _ = []

instance TF.IsValid (LbListenerData s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedArn (TF.Ref s' (LbListenerData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedCertificateArn (TF.Ref s' (LbListenerData s)) (TF.Attr s P.Text) where
    computedCertificateArn x = TF.compute (TF.refKey x) "_computedCertificateArn"

instance s ~ s' => P.HasComputedDefaultAction (TF.Ref s' (LbListenerData s)) (TF.Attr s [TF.Attr s (DefaultAction s)]) where
    computedDefaultAction x = TF.compute (TF.refKey x) "_computedDefaultAction"

instance s ~ s' => P.HasComputedLoadBalancerArn (TF.Ref s' (LbListenerData s)) (TF.Attr s P.Text) where
    computedLoadBalancerArn x = TF.compute (TF.refKey x) "_computedLoadBalancerArn"

instance s ~ s' => P.HasComputedPort (TF.Ref s' (LbListenerData s)) (TF.Attr s P.Integer) where
    computedPort x = TF.compute (TF.refKey x) "_computedPort"

instance s ~ s' => P.HasComputedProtocol (TF.Ref s' (LbListenerData s)) (TF.Attr s P.Text) where
    computedProtocol x = TF.compute (TF.refKey x) "_computedProtocol"

instance s ~ s' => P.HasComputedSslPolicy (TF.Ref s' (LbListenerData s)) (TF.Attr s P.Text) where
    computedSslPolicy x = TF.compute (TF.refKey x) "_computedSslPolicy"

-- | @aws_lb_target_group@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_lb_target_group terraform documentation>
-- for more information.
data LbTargetGroupData s = LbTargetGroupData'
    deriving (P.Show, P.Eq, P.Generic)

lbTargetGroupData
    :: TF.DataSource P.Provider (LbTargetGroupData s)
lbTargetGroupData =
    TF.newDataSource "aws_lb_target_group" TF.validator $
        LbTargetGroupData'

instance TF.IsObject (LbTargetGroupData s) where
    toObject _ = []

instance TF.IsValid (LbTargetGroupData s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedArn (TF.Ref s' (LbTargetGroupData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedArnSuffix (TF.Ref s' (LbTargetGroupData s)) (TF.Attr s P.Text) where
    computedArnSuffix x = TF.compute (TF.refKey x) "_computedArnSuffix"

instance s ~ s' => P.HasComputedDeregistrationDelay (TF.Ref s' (LbTargetGroupData s)) (TF.Attr s P.Integer) where
    computedDeregistrationDelay x = TF.compute (TF.refKey x) "_computedDeregistrationDelay"

instance s ~ s' => P.HasComputedHealthCheck (TF.Ref s' (LbTargetGroupData s)) (TF.Attr s (HealthCheck s)) where
    computedHealthCheck x = TF.compute (TF.refKey x) "_computedHealthCheck"

instance s ~ s' => P.HasComputedName (TF.Ref s' (LbTargetGroupData s)) (TF.Attr s P.Text) where
    computedName x = TF.compute (TF.refKey x) "_computedName"

instance s ~ s' => P.HasComputedPort (TF.Ref s' (LbTargetGroupData s)) (TF.Attr s P.Integer) where
    computedPort x = TF.compute (TF.refKey x) "_computedPort"

instance s ~ s' => P.HasComputedProtocol (TF.Ref s' (LbTargetGroupData s)) (TF.Attr s P.Text) where
    computedProtocol x = TF.compute (TF.refKey x) "_computedProtocol"

instance s ~ s' => P.HasComputedSlowStart (TF.Ref s' (LbTargetGroupData s)) (TF.Attr s P.Integer) where
    computedSlowStart x = TF.compute (TF.refKey x) "_computedSlowStart"

instance s ~ s' => P.HasComputedStickiness (TF.Ref s' (LbTargetGroupData s)) (TF.Attr s (Stickiness s)) where
    computedStickiness x = TF.compute (TF.refKey x) "_computedStickiness"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (LbTargetGroupData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "_computedTags"

instance s ~ s' => P.HasComputedVpcId (TF.Ref s' (LbTargetGroupData s)) (TF.Attr s P.Text) where
    computedVpcId x = TF.compute (TF.refKey x) "_computedVpcId"

-- | @aws_mq_broker@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_mq_broker terraform documentation>
-- for more information.
data MqBrokerData s = MqBrokerData'
    deriving (P.Show, P.Eq, P.Generic)

mqBrokerData
    :: TF.DataSource P.Provider (MqBrokerData s)
mqBrokerData =
    TF.newDataSource "aws_mq_broker" TF.validator $
        MqBrokerData'

instance TF.IsObject (MqBrokerData s) where
    toObject _ = []

instance TF.IsValid (MqBrokerData s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedArn (TF.Ref s' (MqBrokerData s)) (TF.Attr s P.Text) where
    computedArn x = TF.compute (TF.refKey x) "_computedArn"

instance s ~ s' => P.HasComputedAutoMinorVersionUpgrade (TF.Ref s' (MqBrokerData s)) (TF.Attr s P.Bool) where
    computedAutoMinorVersionUpgrade x = TF.compute (TF.refKey x) "_computedAutoMinorVersionUpgrade"

instance s ~ s' => P.HasComputedBrokerId (TF.Ref s' (MqBrokerData s)) (TF.Attr s P.Text) where
    computedBrokerId x = TF.compute (TF.refKey x) "_computedBrokerId"

instance s ~ s' => P.HasComputedBrokerName (TF.Ref s' (MqBrokerData s)) (TF.Attr s P.Text) where
    computedBrokerName x = TF.compute (TF.refKey x) "_computedBrokerName"

instance s ~ s' => P.HasComputedConfiguration (TF.Ref s' (MqBrokerData s)) (TF.Attr s (Configuration s)) where
    computedConfiguration x = TF.compute (TF.refKey x) "_computedConfiguration"

instance s ~ s' => P.HasComputedDeploymentMode (TF.Ref s' (MqBrokerData s)) (TF.Attr s P.Text) where
    computedDeploymentMode x = TF.compute (TF.refKey x) "_computedDeploymentMode"

instance s ~ s' => P.HasComputedEngineType (TF.Ref s' (MqBrokerData s)) (TF.Attr s P.Text) where
    computedEngineType x = TF.compute (TF.refKey x) "_computedEngineType"

instance s ~ s' => P.HasComputedEngineVersion (TF.Ref s' (MqBrokerData s)) (TF.Attr s P.Text) where
    computedEngineVersion x = TF.compute (TF.refKey x) "_computedEngineVersion"

instance s ~ s' => P.HasComputedHostInstanceType (TF.Ref s' (MqBrokerData s)) (TF.Attr s P.Text) where
    computedHostInstanceType x = TF.compute (TF.refKey x) "_computedHostInstanceType"

instance s ~ s' => P.HasComputedInstances (TF.Ref s' (MqBrokerData s)) (TF.Attr s [TF.Attr s (Instances s)]) where
    computedInstances x = TF.compute (TF.refKey x) "_computedInstances"

instance s ~ s' => P.HasComputedMaintenanceWindowStartTime (TF.Ref s' (MqBrokerData s)) (TF.Attr s (MaintenanceWindowStartTime s)) where
    computedMaintenanceWindowStartTime x = TF.compute (TF.refKey x) "_computedMaintenanceWindowStartTime"

instance s ~ s' => P.HasComputedPubliclyAccessible (TF.Ref s' (MqBrokerData s)) (TF.Attr s P.Bool) where
    computedPubliclyAccessible x = TF.compute (TF.refKey x) "_computedPubliclyAccessible"

instance s ~ s' => P.HasComputedSecurityGroups (TF.Ref s' (MqBrokerData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedSecurityGroups x = TF.compute (TF.refKey x) "_computedSecurityGroups"

instance s ~ s' => P.HasComputedSubnetIds (TF.Ref s' (MqBrokerData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedSubnetIds x = TF.compute (TF.refKey x) "_computedSubnetIds"

instance s ~ s' => P.HasComputedUser (TF.Ref s' (MqBrokerData s)) (TF.Attr s [TF.Attr s (User s)]) where
    computedUser x = TF.compute (TF.refKey x) "_computedUser"

-- | @aws_nat_gateway@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_nat_gateway terraform documentation>
-- for more information.
data NatGatewayData s = NatGatewayData'
    { _filter :: TF.Attr s [TF.Attr s (Filter s)]
    -- ^ @filter@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

natGatewayData
    :: TF.DataSource P.Provider (NatGatewayData s)
natGatewayData =
    TF.newDataSource "aws_nat_gateway" TF.validator $
        NatGatewayData'
            { _filter = TF.Nil
            }

instance TF.IsObject (NatGatewayData s) where
    toObject NatGatewayData'{..} = P.catMaybes
        [ TF.assign "filter" <$> TF.attribute _filter
        ]

instance TF.IsValid (NatGatewayData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filter"
                  (_filter
                      :: NatGatewayData s -> TF.Attr s [TF.Attr s (Filter s)])
                  TF.validator

instance P.HasFilter (NatGatewayData s) (TF.Attr s [TF.Attr s (Filter s)]) where
    filter =
        P.lens (_filter :: NatGatewayData s -> TF.Attr s [TF.Attr s (Filter s)])
               (\s a -> s { _filter = a } :: NatGatewayData s)

instance s ~ s' => P.HasComputedAllocationId (TF.Ref s' (NatGatewayData s)) (TF.Attr s P.Text) where
    computedAllocationId x = TF.compute (TF.refKey x) "_computedAllocationId"

instance s ~ s' => P.HasComputedId (TF.Ref s' (NatGatewayData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "_computedId"

instance s ~ s' => P.HasComputedNetworkInterfaceId (TF.Ref s' (NatGatewayData s)) (TF.Attr s P.Text) where
    computedNetworkInterfaceId x = TF.compute (TF.refKey x) "_computedNetworkInterfaceId"

instance s ~ s' => P.HasComputedPrivateIp (TF.Ref s' (NatGatewayData s)) (TF.Attr s P.Text) where
    computedPrivateIp x = TF.compute (TF.refKey x) "_computedPrivateIp"

instance s ~ s' => P.HasComputedPublicIp (TF.Ref s' (NatGatewayData s)) (TF.Attr s P.Text) where
    computedPublicIp x = TF.compute (TF.refKey x) "_computedPublicIp"

instance s ~ s' => P.HasComputedState (TF.Ref s' (NatGatewayData s)) (TF.Attr s P.Text) where
    computedState x = TF.compute (TF.refKey x) "_computedState"

instance s ~ s' => P.HasComputedSubnetId (TF.Ref s' (NatGatewayData s)) (TF.Attr s P.Text) where
    computedSubnetId x = TF.compute (TF.refKey x) "_computedSubnetId"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (NatGatewayData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "_computedTags"

instance s ~ s' => P.HasComputedVpcId (TF.Ref s' (NatGatewayData s)) (TF.Attr s P.Text) where
    computedVpcId x = TF.compute (TF.refKey x) "_computedVpcId"

-- | @aws_network_acls@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_network_acls terraform documentation>
-- for more information.
data NetworkAclsData s = NetworkAclsData'
    { _filter :: TF.Attr s [TF.Attr s (Filter s)]
    -- ^ @filter@ - (Optional)
    --
    , _vpcId  :: TF.Attr s P.Text
    -- ^ @vpc_id@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

networkAclsData
    :: TF.DataSource P.Provider (NetworkAclsData s)
networkAclsData =
    TF.newDataSource "aws_network_acls" TF.validator $
        NetworkAclsData'
            { _filter = TF.Nil
            , _vpcId = TF.Nil
            }

instance TF.IsObject (NetworkAclsData s) where
    toObject NetworkAclsData'{..} = P.catMaybes
        [ TF.assign "filter" <$> TF.attribute _filter
        , TF.assign "vpc_id" <$> TF.attribute _vpcId
        ]

instance TF.IsValid (NetworkAclsData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filter"
                  (_filter
                      :: NetworkAclsData s -> TF.Attr s [TF.Attr s (Filter s)])
                  TF.validator

instance P.HasFilter (NetworkAclsData s) (TF.Attr s [TF.Attr s (Filter s)]) where
    filter =
        P.lens (_filter :: NetworkAclsData s -> TF.Attr s [TF.Attr s (Filter s)])
               (\s a -> s { _filter = a } :: NetworkAclsData s)

instance P.HasVpcId (NetworkAclsData s) (TF.Attr s P.Text) where
    vpcId =
        P.lens (_vpcId :: NetworkAclsData s -> TF.Attr s P.Text)
               (\s a -> s { _vpcId = a } :: NetworkAclsData s)

instance s ~ s' => P.HasComputedIds (TF.Ref s' (NetworkAclsData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedIds x = TF.compute (TF.refKey x) "_computedIds"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (NetworkAclsData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "_computedTags"

-- | @aws_network_interface@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_network_interface terraform documentation>
-- for more information.
data NetworkInterfaceData s = NetworkInterfaceData'
    { _filter :: TF.Attr s [TF.Attr s (Filter s)]
    -- ^ @filter@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

networkInterfaceData
    :: TF.DataSource P.Provider (NetworkInterfaceData s)
networkInterfaceData =
    TF.newDataSource "aws_network_interface" TF.validator $
        NetworkInterfaceData'
            { _filter = TF.Nil
            }

instance TF.IsObject (NetworkInterfaceData s) where
    toObject NetworkInterfaceData'{..} = P.catMaybes
        [ TF.assign "filter" <$> TF.attribute _filter
        ]

instance TF.IsValid (NetworkInterfaceData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filter"
                  (_filter
                      :: NetworkInterfaceData s -> TF.Attr s [TF.Attr s (Filter s)])
                  TF.validator

instance P.HasFilter (NetworkInterfaceData s) (TF.Attr s [TF.Attr s (Filter s)]) where
    filter =
        P.lens (_filter :: NetworkInterfaceData s -> TF.Attr s [TF.Attr s (Filter s)])
               (\s a -> s { _filter = a } :: NetworkInterfaceData s)

instance s ~ s' => P.HasComputedAssociation (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s [TF.Attr s (Association s)]) where
    computedAssociation x = TF.compute (TF.refKey x) "_computedAssociation"

instance s ~ s' => P.HasComputedAttachment (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s [TF.Attr s (Attachment s)]) where
    computedAttachment x = TF.compute (TF.refKey x) "_computedAttachment"

instance s ~ s' => P.HasComputedAvailabilityZone (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s P.Text) where
    computedAvailabilityZone x = TF.compute (TF.refKey x) "_computedAvailabilityZone"

instance s ~ s' => P.HasComputedDescription (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s P.Text) where
    computedDescription x = TF.compute (TF.refKey x) "_computedDescription"

instance s ~ s' => P.HasComputedId (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s P.Text) where
    computedId x = TF.compute (TF.refKey x) "_computedId"

instance s ~ s' => P.HasComputedInterfaceType (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s P.Text) where
    computedInterfaceType x = TF.compute (TF.refKey x) "_computedInterfaceType"

instance s ~ s' => P.HasComputedIpv6Addresses (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedIpv6Addresses x = TF.compute (TF.refKey x) "_computedIpv6Addresses"

instance s ~ s' => P.HasComputedMacAddress (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s P.Text) where
    computedMacAddress x = TF.compute (TF.refKey x) "_computedMacAddress"

instance s ~ s' => P.HasComputedOwnerId (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s P.Text) where
    computedOwnerId x = TF.compute (TF.refKey x) "_computedOwnerId"

instance s ~ s' => P.HasComputedPrivateDnsName (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s P.Text) where
    computedPrivateDnsName x = TF.compute (TF.refKey x) "_computedPrivateDnsName"

instance s ~ s' => P.HasComputedPrivateIp (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s P.Text) where
    computedPrivateIp x = TF.compute (TF.refKey x) "_computedPrivateIp"

instance s ~ s' => P.HasComputedPrivateIps (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedPrivateIps x = TF.compute (TF.refKey x) "_computedPrivateIps"

instance s ~ s' => P.HasComputedRequesterId (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s P.Text) where
    computedRequesterId x = TF.compute (TF.refKey x) "_computedRequesterId"

instance s ~ s' => P.HasComputedSecurityGroups (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedSecurityGroups x = TF.compute (TF.refKey x) "_computedSecurityGroups"

instance s ~ s' => P.HasComputedSubnetId (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s P.Text) where
    computedSubnetId x = TF.compute (TF.refKey x) "_computedSubnetId"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "_computedTags"

instance s ~ s' => P.HasComputedVpcId (TF.Ref s' (NetworkInterfaceData s)) (TF.Attr s P.Text) where
    computedVpcId x = TF.compute (TF.refKey x) "_computedVpcId"

-- | @aws_network_interfaces@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_network_interfaces terraform documentation>
-- for more information.
data NetworkInterfacesData s = NetworkInterfacesData'
    { _filter :: TF.Attr s [TF.Attr s (Filter s)]
    -- ^ @filter@ - (Optional)
    --
    } deriving (P.Show, P.Eq, P.Generic)

networkInterfacesData
    :: TF.DataSource P.Provider (NetworkInterfacesData s)
networkInterfacesData =
    TF.newDataSource "aws_network_interfaces" TF.validator $
        NetworkInterfacesData'
            { _filter = TF.Nil
            }

instance TF.IsObject (NetworkInterfacesData s) where
    toObject NetworkInterfacesData'{..} = P.catMaybes
        [ TF.assign "filter" <$> TF.attribute _filter
        ]

instance TF.IsValid (NetworkInterfacesData s) where
    validator = P.mempty
           P.<> TF.settingsValidator "_filter"
                  (_filter
                      :: NetworkInterfacesData s -> TF.Attr s [TF.Attr s (Filter s)])
                  TF.validator

instance P.HasFilter (NetworkInterfacesData s) (TF.Attr s [TF.Attr s (Filter s)]) where
    filter =
        P.lens (_filter :: NetworkInterfacesData s -> TF.Attr s [TF.Attr s (Filter s)])
               (\s a -> s { _filter = a } :: NetworkInterfacesData s)

instance s ~ s' => P.HasComputedIds (TF.Ref s' (NetworkInterfacesData s)) (TF.Attr s [TF.Attr s P.Text]) where
    computedIds x = TF.compute (TF.refKey x) "_computedIds"

instance s ~ s' => P.HasComputedTags (TF.Ref s' (NetworkInterfacesData s)) (TF.Attr s (P.HashMap P.Text (TF.Attr s P.Text))) where
    computedTags x = TF.compute (TF.refKey x) "_computedTags"

-- | @aws_partition@ DataSource.
--
-- See the <https://www.terraform.io/docs/providers/AWS/aws_partition terraform documentation>
-- for more information.
data PartitionData s = PartitionData'
    deriving (P.Show, P.Eq, P.Generic)

partitionData
    :: TF.DataSource P.Provider (PartitionData s)
partitionData =
    TF.newDataSource "aws_partition" TF.validator $
        PartitionData'

instance TF.IsObject (PartitionData s) where
    toObject _ = []

instance TF.IsValid (PartitionData s) where
    validator = P.mempty

instance s ~ s' => P.HasComputedPartition (TF.Ref s' (PartitionData s)) (TF.Attr s P.Text) where
    computedPartition x = TF.compute (TF.refKey x) "_computedPartition"