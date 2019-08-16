# Kubernetes::V1beta1StorageClass

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allow_volume_expansion** | **Boolean** | AllowVolumeExpansion shows whether the storage class allow volume expand | [optional] 
**allowed_topologies** | [**Array&lt;V1TopologySelectorTerm&gt;**](V1TopologySelectorTerm.md) | Restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature. | [optional] 
**api_version** | **String** | APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources | [optional] 
**kind** | **String** | Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds | [optional] 
**metadata** | [**V1ObjectMeta**](V1ObjectMeta.md) |  | [optional] 
**mount_options** | **Array&lt;String&gt;** | Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions, e.g. [\&quot;ro\&quot;, \&quot;soft\&quot;]. Not validated - mount of the PVs will simply fail if one is invalid. | [optional] 
**parameters** | **Hash&lt;String, String&gt;** | Parameters holds the parameters for the provisioner that should create volumes of this storage class. | [optional] 
**provisioner** | **String** | Provisioner indicates the type of the provisioner. | 
**reclaim_policy** | **String** | Dynamically provisioned PersistentVolumes of this storage class are created with this reclaimPolicy. Defaults to Delete. | [optional] 
**volume_binding_mode** | **String** | VolumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1beta1StorageClass.new(allow_volume_expansion: null,
                                 allowed_topologies: null,
                                 api_version: null,
                                 kind: null,
                                 metadata: null,
                                 mount_options: null,
                                 parameters: null,
                                 provisioner: null,
                                 reclaim_policy: null,
                                 volume_binding_mode: null)
```


