# Kubernetes::V2beta1MetricStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external** | [**V2beta1ExternalMetricStatus**](V2beta1ExternalMetricStatus.md) |  | [optional] 
**object** | [**V2beta1ObjectMetricStatus**](V2beta1ObjectMetricStatus.md) |  | [optional] 
**pods** | [**V2beta1PodsMetricStatus**](V2beta1PodsMetricStatus.md) |  | [optional] 
**resource** | [**V2beta1ResourceMetricStatus**](V2beta1ResourceMetricStatus.md) |  | [optional] 
**type** | **String** | type is the type of metric source.  It will be one of \&quot;Object\&quot;, \&quot;Pods\&quot; or \&quot;Resource\&quot;, each corresponds to a matching field in the object. | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V2beta1MetricStatus.new(external: null,
                                 object: null,
                                 pods: null,
                                 resource: null,
                                 type: null)
```


