# Kubernetes::V1ScopedResourceSelectorRequirement

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**operator** | **String** | Represents a scope&#39;s relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. | 
**scope_name** | **String** | The name of the scope that the selector applies to. | 
**values** | **Array&lt;String&gt;** | An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1ScopedResourceSelectorRequirement.new(operator: null,
                                 scope_name: null,
                                 values: null)
```


