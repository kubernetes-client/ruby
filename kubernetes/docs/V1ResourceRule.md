# Kubernetes::V1ResourceRule

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**api_groups** | **Array&lt;String&gt;** | APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.  \&quot;*\&quot; means all. | [optional] 
**resource_names** | **Array&lt;String&gt;** | ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.  \&quot;*\&quot; means all. | [optional] 
**resources** | **Array&lt;String&gt;** | Resources is a list of resources this rule applies to.  ResourceAll represents all resources.  \&quot;*\&quot; means all. | [optional] 
**verbs** | **Array&lt;String&gt;** | Verb is a list of kubernetes resource API verbs, like: get, list, watch, create, update, delete, proxy.  \&quot;*\&quot; means all. | 


