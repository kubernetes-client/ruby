# Kubernetes::V1NodeSelector

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**node_selector_terms** | [**Array&lt;V1NodeSelectorTerm&gt;**](V1NodeSelectorTerm.md) | Required. A list of node selector terms. The terms are ORed. | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1NodeSelector.new(node_selector_terms: null)
```


