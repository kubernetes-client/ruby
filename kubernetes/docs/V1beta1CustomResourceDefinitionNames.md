# Kubernetes::V1beta1CustomResourceDefinitionNames

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**categories** | **Array&lt;String&gt;** | Categories is a list of grouped resources custom resources belong to (e.g. &#39;all&#39;) | [optional] 
**kind** | **String** | Kind is the serialized kind of the resource.  It is normally CamelCase and singular. | 
**list_kind** | **String** | ListKind is the serialized kind of the list for this resource.  Defaults to &lt;kind&gt;List. | [optional] 
**plural** | **String** | Plural is the plural name of the resource to serve.  It must match the name of the CustomResourceDefinition-registration too: plural.group and it must be all lowercase. | 
**short_names** | **Array&lt;String&gt;** | ShortNames are short names for the resource.  It must be all lowercase. | [optional] 
**singular** | **String** | Singular is the singular name of the resource.  It must be all lowercase  Defaults to lowercased &lt;kind&gt; | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1beta1CustomResourceDefinitionNames.new(categories: null,
                                 kind: null,
                                 list_kind: null,
                                 plural: null,
                                 short_names: null,
                                 singular: null)
```


