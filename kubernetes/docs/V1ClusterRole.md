# Kubernetes::V1ClusterRole

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**aggregation_rule** | [**V1AggregationRule**](V1AggregationRule.md) |  | [optional] 
**api_version** | **String** | APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources | [optional] 
**kind** | **String** | Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds | [optional] 
**metadata** | [**V1ObjectMeta**](V1ObjectMeta.md) |  | [optional] 
**rules** | [**Array&lt;V1PolicyRule&gt;**](V1PolicyRule.md) | Rules holds all the PolicyRules for this ClusterRole | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1ClusterRole.new(aggregation_rule: null,
                                 api_version: null,
                                 kind: null,
                                 metadata: null,
                                 rules: null)
```


