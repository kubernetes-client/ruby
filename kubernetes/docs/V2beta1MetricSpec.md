# Kubernetes::V2beta1MetricSpec

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external** | [**V2beta1ExternalMetricSource**](V2beta1ExternalMetricSource.md) |  | [optional] 
**object** | [**V2beta1ObjectMetricSource**](V2beta1ObjectMetricSource.md) |  | [optional] 
**pods** | [**V2beta1PodsMetricSource**](V2beta1PodsMetricSource.md) |  | [optional] 
**resource** | [**V2beta1ResourceMetricSource**](V2beta1ResourceMetricSource.md) |  | [optional] 
**type** | **String** | type is the type of metric source.  It should be one of \&quot;Object\&quot;, \&quot;Pods\&quot; or \&quot;Resource\&quot;, each mapping to a matching field in the object. | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V2beta1MetricSpec.new(external: null,
                                 object: null,
                                 pods: null,
                                 resource: null,
                                 type: null)
```


