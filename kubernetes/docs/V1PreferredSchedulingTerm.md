# Kubernetes::V1PreferredSchedulingTerm

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**preference** | [**V1NodeSelectorTerm**](V1NodeSelectorTerm.md) |  | 
**weight** | **Integer** | Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100. | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1PreferredSchedulingTerm.new(preference: null,
                                 weight: null)
```


