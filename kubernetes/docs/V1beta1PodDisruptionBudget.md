# Kubernetes::V1beta1PodDisruptionBudget

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**api_version** | **String** | APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources | [optional] 
**kind** | **String** | Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds | [optional] 
**metadata** | [**V1ObjectMeta**](V1ObjectMeta.md) |  | [optional] 
**spec** | [**V1beta1PodDisruptionBudgetSpec**](V1beta1PodDisruptionBudgetSpec.md) |  | [optional] 
**status** | [**V1beta1PodDisruptionBudgetStatus**](V1beta1PodDisruptionBudgetStatus.md) |  | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1beta1PodDisruptionBudget.new(api_version: null,
                                 kind: null,
                                 metadata: null,
                                 spec: null,
                                 status: null)
```


