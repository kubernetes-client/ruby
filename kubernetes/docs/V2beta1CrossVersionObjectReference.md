# Kubernetes::V2beta1CrossVersionObjectReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**api_version** | **String** | API version of the referent | [optional] 
**kind** | **String** | Kind of the referent; More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds\&quot; | 
**name** | **String** | Name of the referent; More info: http://kubernetes.io/docs/user-guide/identifiers#names | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V2beta1CrossVersionObjectReference.new(api_version: null,
                                 kind: null,
                                 name: null)
```


