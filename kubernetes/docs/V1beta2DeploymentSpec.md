# Kubernetes::V1beta2DeploymentSpec

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**min_ready_seconds** | **Integer** | Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready) | [optional] 
**paused** | **Boolean** | Indicates that the deployment is paused. | [optional] 
**progress_deadline_seconds** | **Integer** | The maximum time in seconds for a deployment to make progress before it is considered to be failed. The deployment controller will continue to process failed deployments and a condition with a ProgressDeadlineExceeded reason will be surfaced in the deployment status. Note that progress will not be estimated during the time a deployment is paused. Defaults to 600s. | [optional] 
**replicas** | **Integer** | Number of desired pods. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1. | [optional] 
**revision_history_limit** | **Integer** | The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10. | [optional] 
**selector** | [**V1LabelSelector**](V1LabelSelector.md) |  | 
**strategy** | [**V1beta2DeploymentStrategy**](V1beta2DeploymentStrategy.md) |  | [optional] 
**template** | [**V1PodTemplateSpec**](V1PodTemplateSpec.md) |  | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1beta2DeploymentSpec.new(min_ready_seconds: null,
                                 paused: null,
                                 progress_deadline_seconds: null,
                                 replicas: null,
                                 revision_history_limit: null,
                                 selector: null,
                                 strategy: null,
                                 template: null)
```


