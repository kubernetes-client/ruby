# Kubernetes::V1HorizontalPodAutoscalerSpec

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**max_replicas** | **Integer** | upper limit for the number of pods that can be set by the autoscaler; cannot be smaller than MinReplicas. | 
**min_replicas** | **Integer** | lower limit for the number of pods that can be set by the autoscaler, default 1. | [optional] 
**scale_target_ref** | [**V1CrossVersionObjectReference**](V1CrossVersionObjectReference.md) |  | 
**target_cpu_utilization_percentage** | **Integer** | target average CPU utilization (represented as a percentage of requested CPU) over all the pods; if not specified the default autoscaling policy will be used. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1HorizontalPodAutoscalerSpec.new(max_replicas: null,
                                 min_replicas: null,
                                 scale_target_ref: null,
                                 target_cpu_utilization_percentage: null)
```


