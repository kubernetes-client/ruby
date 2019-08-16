# Kubernetes::V2beta1ExternalMetricSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metric_name** | **String** | metricName is the name of the metric in question. | 
**metric_selector** | [**V1LabelSelector**](V1LabelSelector.md) |  | [optional] 
**target_average_value** | **String** | targetAverageValue is the target per-pod value of global metric (as a quantity). Mutually exclusive with TargetValue. | [optional] 
**target_value** | **String** | targetValue is the target value of the metric (as a quantity). Mutually exclusive with TargetAverageValue. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V2beta1ExternalMetricSource.new(metric_name: null,
                                 metric_selector: null,
                                 target_average_value: null,
                                 target_value: null)
```


