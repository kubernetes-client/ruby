# Kubernetes::V1TypedLocalObjectReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**api_group** | **String** | APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required. | [optional] 
**kind** | **String** | Kind is the type of resource being referenced | 
**name** | **String** | Name is the name of resource being referenced | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1TypedLocalObjectReference.new(api_group: null,
                                 kind: null,
                                 name: null)
```


