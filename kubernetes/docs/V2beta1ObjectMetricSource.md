# Kubernetes::V2beta1ObjectMetricSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**average_value** | **String** | averageValue is the target value of the average of the metric across all relevant pods (as a quantity) | [optional] 
**metric_name** | **String** | metricName is the name of the metric in question. | 
**selector** | [**V1LabelSelector**](V1LabelSelector.md) |  | [optional] 
**target** | [**V2beta1CrossVersionObjectReference**](V2beta1CrossVersionObjectReference.md) |  | 
**target_value** | **String** | targetValue is the target value of the metric (as a quantity). | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V2beta1ObjectMetricSource.new(average_value: null,
                                 metric_name: null,
                                 selector: null,
                                 target: null,
                                 target_value: null)
```


