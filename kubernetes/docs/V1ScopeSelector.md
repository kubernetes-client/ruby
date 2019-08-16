# Kubernetes::V1ScopeSelector

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**match_expressions** | [**Array&lt;V1ScopedResourceSelectorRequirement&gt;**](V1ScopedResourceSelectorRequirement.md) | A list of scope selector requirements by scope of the resources. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1ScopeSelector.new(match_expressions: null)
```


