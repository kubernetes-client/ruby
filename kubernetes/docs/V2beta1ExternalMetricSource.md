# Kubernetes::V2beta1ExternalMetricSource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metric_name** | **String** | metricName is the name of the metric in question. | 
**metric_selector** | [**V1LabelSelector**](V1LabelSelector.md) | metricSelector is used to identify a specific time series within a given metric. | [optional] 
**target_average_value** | **String** | targetAverageValue is the target per-pod value of global metric (as a quantity). Mutually exclusive with TargetValue. | [optional] 
**target_value** | **String** | targetValue is the target value of the metric (as a quantity). Mutually exclusive with TargetAverageValue. | [optional] 


