# Kubernetes::V2beta2MetricStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external** | [**V2beta2ExternalMetricStatus**](V2beta2ExternalMetricStatus.md) |  | [optional] 
**object** | [**V2beta2ObjectMetricStatus**](V2beta2ObjectMetricStatus.md) |  | [optional] 
**pods** | [**V2beta2PodsMetricStatus**](V2beta2PodsMetricStatus.md) |  | [optional] 
**resource** | [**V2beta2ResourceMetricStatus**](V2beta2ResourceMetricStatus.md) |  | [optional] 
**type** | **String** | type is the type of metric source.  It will be one of \&quot;Object\&quot;, \&quot;Pods\&quot; or \&quot;Resource\&quot;, each corresponds to a matching field in the object. | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V2beta2MetricStatus.new(external: null,
                                 object: null,
                                 pods: null,
                                 resource: null,
                                 type: null)
```


