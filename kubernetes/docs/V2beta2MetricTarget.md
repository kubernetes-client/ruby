# Kubernetes::V2beta2MetricTarget

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**average_utilization** | **Integer** | averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type | [optional] 
**average_value** | **String** | averageValue is the target value of the average of the metric across all relevant pods (as a quantity) | [optional] 
**type** | **String** | type represents whether the metric type is Utilization, Value, or AverageValue | 
**value** | **String** | value is the target value of the metric (as a quantity). | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V2beta2MetricTarget.new(average_utilization: null,
                                 average_value: null,
                                 type: null,
                                 value: null)
```


