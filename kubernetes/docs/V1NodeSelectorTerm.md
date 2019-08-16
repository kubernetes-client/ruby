# Kubernetes::V1NodeSelectorTerm

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**match_expressions** | [**Array&lt;V1NodeSelectorRequirement&gt;**](V1NodeSelectorRequirement.md) | A list of node selector requirements by node&#39;s labels. | [optional] 
**match_fields** | [**Array&lt;V1NodeSelectorRequirement&gt;**](V1NodeSelectorRequirement.md) | A list of node selector requirements by node&#39;s fields. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1NodeSelectorTerm.new(match_expressions: null,
                                 match_fields: null)
```


