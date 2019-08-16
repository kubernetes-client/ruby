# Kubernetes::V1DaemonSetSpec

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**min_ready_seconds** | **Integer** | The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready). | [optional] 
**revision_history_limit** | **Integer** | The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10. | [optional] 
**selector** | [**V1LabelSelector**](V1LabelSelector.md) |  | 
**template** | [**V1PodTemplateSpec**](V1PodTemplateSpec.md) |  | 
**update_strategy** | [**V1DaemonSetUpdateStrategy**](V1DaemonSetUpdateStrategy.md) |  | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1DaemonSetSpec.new(min_ready_seconds: null,
                                 revision_history_limit: null,
                                 selector: null,
                                 template: null,
                                 update_strategy: null)
```


