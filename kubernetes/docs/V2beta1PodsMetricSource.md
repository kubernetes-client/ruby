# Kubernetes::V2beta1PodsMetricSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metric_name** | **String** | metricName is the name of the metric in question | 
**selector** | [**V1LabelSelector**](V1LabelSelector.md) |  | [optional] 
**target_average_value** | **String** | targetAverageValue is the target value of the average of the metric across all relevant pods (as a quantity) | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V2beta1PodsMetricSource.new(metric_name: null,
                                 selector: null,
                                 target_average_value: null)
```


