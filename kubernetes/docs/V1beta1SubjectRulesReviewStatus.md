# Kubernetes::V1beta1SubjectRulesReviewStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**evaluation_error** | **String** | EvaluationError can appear in combination with Rules. It indicates an error occurred during rule evaluation, such as an authorizer that doesn&#39;t support rule evaluation, and that ResourceRules and/or NonResourceRules may be incomplete. | [optional] 
**incomplete** | **Boolean** | Incomplete is true when the rules returned by this call are incomplete. This is most commonly encountered when an authorizer, such as an external authorizer, doesn&#39;t support rules evaluation. | 
**non_resource_rules** | [**Array&lt;V1beta1NonResourceRule&gt;**](V1beta1NonResourceRule.md) | NonResourceRules is the list of actions the subject is allowed to perform on non-resources. The list ordering isn&#39;t significant, may contain duplicates, and possibly be incomplete. | 
**resource_rules** | [**Array&lt;V1beta1ResourceRule&gt;**](V1beta1ResourceRule.md) | ResourceRules is the list of actions the subject is allowed to perform on resources. The list ordering isn&#39;t significant, may contain duplicates, and possibly be incomplete. | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1beta1SubjectRulesReviewStatus.new(evaluation_error: null,
                                 incomplete: null,
                                 non_resource_rules: null,
                                 resource_rules: null)
```


