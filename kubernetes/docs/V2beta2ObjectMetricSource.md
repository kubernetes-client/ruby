# Kubernetes::V2beta2ObjectMetricSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**described_object** | [**V2beta2CrossVersionObjectReference**](V2beta2CrossVersionObjectReference.md) |  | 
**metric** | [**V2beta2MetricIdentifier**](V2beta2MetricIdentifier.md) |  | 
**target** | [**V2beta2MetricTarget**](V2beta2MetricTarget.md) |  | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V2beta2ObjectMetricSource.new(described_object: null,
                                 metric: null,
                                 target: null)
```


