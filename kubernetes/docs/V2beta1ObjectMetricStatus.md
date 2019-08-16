# Kubernetes::V2beta1ObjectMetricStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**average_value** | **String** | averageValue is the current value of the average of the metric across all relevant pods (as a quantity) | [optional] 
**current_value** | **String** | currentValue is the current value of the metric (as a quantity). | 
**metric_name** | **String** | metricName is the name of the metric in question. | 
**selector** | [**V1LabelSelector**](V1LabelSelector.md) |  | [optional] 
**target** | [**V2beta1CrossVersionObjectReference**](V2beta1CrossVersionObjectReference.md) |  | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V2beta1ObjectMetricStatus.new(average_value: null,
                                 current_value: null,
                                 metric_name: null,
                                 selector: null,
                                 target: null)
```


