# Kubernetes::V2beta1ExternalMetricStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**current_average_value** | **String** | currentAverageValue is the current value of metric averaged over autoscaled pods. | [optional] 
**current_value** | **String** | currentValue is the current value of the metric (as a quantity) | 
**metric_name** | **String** | metricName is the name of a metric used for autoscaling in metric system. | 
**metric_selector** | [**V1LabelSelector**](V1LabelSelector.md) | metricSelector is used to identify a specific time series within a given metric. | [optional] 


