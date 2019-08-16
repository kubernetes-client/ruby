# Kubernetes::V1beta1CustomResourceDefinitionStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accepted_names** | [**V1beta1CustomResourceDefinitionNames**](V1beta1CustomResourceDefinitionNames.md) |  | 
**conditions** | [**Array&lt;V1beta1CustomResourceDefinitionCondition&gt;**](V1beta1CustomResourceDefinitionCondition.md) | Conditions indicate state for particular aspects of a CustomResourceDefinition | 
**stored_versions** | **Array&lt;String&gt;** | StoredVersions are all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so the migration controller can first finish a migration to another version (i.e. that no old objects are left in the storage), and then remove the rest of the versions from this list. None of the versions in this list can be removed from the spec.Versions field. | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1beta1CustomResourceDefinitionStatus.new(accepted_names: null,
                                 conditions: null,
                                 stored_versions: null)
```


