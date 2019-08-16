# Kubernetes::V1NonResourceRule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**non_resource_ur_ls** | **Array&lt;String&gt;** | NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path.  \&quot;*\&quot; means all. | [optional] 
**verbs** | **Array&lt;String&gt;** | Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  \&quot;*\&quot; means all. | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1NonResourceRule.new(non_resource_ur_ls: null,
                                 verbs: null)
```


