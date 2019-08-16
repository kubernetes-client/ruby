# Kubernetes::V2beta2MetricSpec

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external** | [**V2beta2ExternalMetricSource**](V2beta2ExternalMetricSource.md) |  | [optional] 
**object** | [**V2beta2ObjectMetricSource**](V2beta2ObjectMetricSource.md) |  | [optional] 
**pods** | [**V2beta2PodsMetricSource**](V2beta2PodsMetricSource.md) |  | [optional] 
**resource** | [**V2beta2ResourceMetricSource**](V2beta2ResourceMetricSource.md) |  | [optional] 
**type** | **String** | type is the type of metric source.  It should be one of \&quot;Object\&quot;, \&quot;Pods\&quot; or \&quot;Resource\&quot;, each mapping to a matching field in the object. | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V2beta2MetricSpec.new(external: null,
                                 object: null,
                                 pods: null,
                                 resource: null,
                                 type: null)
```


