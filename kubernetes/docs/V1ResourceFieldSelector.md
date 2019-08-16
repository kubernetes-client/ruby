# Kubernetes::V1ResourceFieldSelector

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**container_name** | **String** | Container name: required for volumes, optional for env vars | [optional] 
**divisor** | **String** | Specifies the output format of the exposed resources, defaults to \&quot;1\&quot; | [optional] 
**resource** | **String** | Required: resource to select | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1ResourceFieldSelector.new(container_name: null,
                                 divisor: null,
                                 resource: null)
```


