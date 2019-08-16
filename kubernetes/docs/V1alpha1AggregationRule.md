# Kubernetes::V1alpha1AggregationRule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cluster_role_selectors** | [**Array&lt;V1LabelSelector&gt;**](V1LabelSelector.md) | ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole&#39;s permissions will be added | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1alpha1AggregationRule.new(cluster_role_selectors: null)
```


