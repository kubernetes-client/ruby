# Kubernetes::V1ManagedFieldsEntry

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**api_version** | **String** | APIVersion defines the version of this resource that this field set applies to. The format is \&quot;group/version\&quot; just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted. | [optional] 
**fields** | [**Object**](.md) | Fields identifies a set of fields. | [optional] 
**manager** | **String** | Manager is an identifier of the workflow managing these fields. | [optional] 
**operation** | **String** | Operation is the type of operation which lead to this ManagedFieldsEntry being created. The only valid values for this field are &#39;Apply&#39; and &#39;Update&#39;. | [optional] 
**time** | **DateTime** | Time is timestamp of when these fields were set. It should always be empty if Operation is &#39;Apply&#39; | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1ManagedFieldsEntry.new(api_version: null,
                                 fields: null,
                                 manager: null,
                                 operation: null,
                                 time: null)
```


