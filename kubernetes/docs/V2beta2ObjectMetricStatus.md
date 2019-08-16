# Kubernetes::V2beta2ObjectMetricStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**current** | [**V2beta2MetricValueStatus**](V2beta2MetricValueStatus.md) |  | 
**described_object** | [**V2beta2CrossVersionObjectReference**](V2beta2CrossVersionObjectReference.md) |  | 
**metric** | [**V2beta2MetricIdentifier**](V2beta2MetricIdentifier.md) |  | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V2beta2ObjectMetricStatus.new(current: null,
                                 described_object: null,
                                 metric: null)
```


