# Kubernetes::V1ReplicationControllerSpec

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**min_ready_seconds** | **Integer** | Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready) | [optional] 
**replicas** | **Integer** | Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller | [optional] 
**selector** | **Hash&lt;String, String&gt;** | Selector is a label query over pods that should match the Replicas count. If Selector is empty, it is defaulted to the labels present on the Pod template. Label keys and values that must match in order to be controlled by this replication controller, if empty defaulted to labels on Pod template. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors | [optional] 
**template** | [**V1PodTemplateSpec**](V1PodTemplateSpec.md) |  | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1ReplicationControllerSpec.new(min_ready_seconds: null,
                                 replicas: null,
                                 selector: null,
                                 template: null)
```


