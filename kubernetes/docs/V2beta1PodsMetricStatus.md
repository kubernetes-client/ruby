# Kubernetes::V2beta1PodsMetricStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**current_average_value** | **String** | currentAverageValue is the current value of the average of the metric across all relevant pods (as a quantity) | 
**metric_name** | **String** | metricName is the name of the metric in question | 
**selector** | [**V1LabelSelector**](V1LabelSelector.md) |  | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V2beta1PodsMetricStatus.new(current_average_value: null,
                                 metric_name: null,
                                 selector: null)
```


