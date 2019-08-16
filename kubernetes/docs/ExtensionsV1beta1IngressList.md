# Kubernetes::ExtensionsV1beta1IngressList

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**api_version** | **String** | APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources | [optional] 
**items** | [**Array&lt;ExtensionsV1beta1Ingress&gt;**](ExtensionsV1beta1Ingress.md) | Items is the list of Ingress. | 
**kind** | **String** | Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds | [optional] 
**metadata** | [**V1ListMeta**](V1ListMeta.md) |  | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::ExtensionsV1beta1IngressList.new(api_version: null,
                                 items: null,
                                 kind: null,
                                 metadata: null)
```


