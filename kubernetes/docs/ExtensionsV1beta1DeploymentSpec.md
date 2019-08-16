# Kubernetes::ExtensionsV1beta1DeploymentSpec

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**min_ready_seconds** | **Integer** | Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready) | [optional] 
**paused** | **Boolean** | Indicates that the deployment is paused and will not be processed by the deployment controller. | [optional] 
**progress_deadline_seconds** | **Integer** | The maximum time in seconds for a deployment to make progress before it is considered to be failed. The deployment controller will continue to process failed deployments and a condition with a ProgressDeadlineExceeded reason will be surfaced in the deployment status. Note that progress will not be estimated during the time a deployment is paused. This is set to the max value of int32 (i.e. 2147483647) by default, which means \&quot;no deadline\&quot;. | [optional] 
**replicas** | **Integer** | Number of desired pods. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1. | [optional] 
**revision_history_limit** | **Integer** | The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. This is set to the max value of int32 (i.e. 2147483647) by default, which means \&quot;retaining all old RelicaSets\&quot;. | [optional] 
**rollback_to** | [**ExtensionsV1beta1RollbackConfig**](ExtensionsV1beta1RollbackConfig.md) |  | [optional] 
**selector** | [**V1LabelSelector**](V1LabelSelector.md) |  | [optional] 
**strategy** | [**ExtensionsV1beta1DeploymentStrategy**](ExtensionsV1beta1DeploymentStrategy.md) |  | [optional] 
**template** | [**V1PodTemplateSpec**](V1PodTemplateSpec.md) |  | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::ExtensionsV1beta1DeploymentSpec.new(min_ready_seconds: null,
                                 paused: null,
                                 progress_deadline_seconds: null,
                                 replicas: null,
                                 revision_history_limit: null,
                                 rollback_to: null,
                                 selector: null,
                                 strategy: null,
                                 template: null)
```


