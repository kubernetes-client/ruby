# Kubernetes::V2beta2MetricValueStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**average_utilization** | **Integer** | currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. | [optional] 
**average_value** | **String** | averageValue is the current value of the average of the metric across all relevant pods (as a quantity) | [optional] 
**value** | **String** | value is the current value of the metric (as a quantity). | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V2beta2MetricValueStatus.new(average_utilization: null,
                                 average_value: null,
                                 value: null)
```


