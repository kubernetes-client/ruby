# Kubernetes::V2beta1ResourceMetricStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**current_average_utilization** | **Integer** | currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.  It will only be present if &#x60;targetAverageValue&#x60; was set in the corresponding metric specification. | [optional] 
**current_average_value** | **String** | currentAverageValue is the current value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the \&quot;pods\&quot; metric source type. It will always be set, regardless of the corresponding metric specification. | 
**name** | **String** | name is the name of the resource in question. | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V2beta1ResourceMetricStatus.new(current_average_utilization: null,
                                 current_average_value: null,
                                 name: null)
```


