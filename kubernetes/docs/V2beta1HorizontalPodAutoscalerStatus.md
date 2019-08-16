# Kubernetes::V2beta1HorizontalPodAutoscalerStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**conditions** | [**Array&lt;V2beta1HorizontalPodAutoscalerCondition&gt;**](V2beta1HorizontalPodAutoscalerCondition.md) | conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met. | 
**current_metrics** | [**Array&lt;V2beta1MetricStatus&gt;**](V2beta1MetricStatus.md) | currentMetrics is the last read state of the metrics used by this autoscaler. | [optional] 
**current_replicas** | **Integer** | currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler. | 
**desired_replicas** | **Integer** | desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler. | 
**last_scale_time** | **DateTime** | lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used by the autoscaler to control how often the number of pods is changed. | [optional] 
**observed_generation** | **Integer** | observedGeneration is the most recent generation observed by this autoscaler. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V2beta1HorizontalPodAutoscalerStatus.new(conditions: null,
                                 current_metrics: null,
                                 current_replicas: null,
                                 desired_replicas: null,
                                 last_scale_time: null,
                                 observed_generation: null)
```


