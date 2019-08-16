# Kubernetes::V1VolumeMount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mount_path** | **String** | Path within the container at which the volume should be mounted.  Must not contain &#39;:&#39;. | 
**mount_propagation** | **String** | mountPropagation determines how mounts are propagated from the host to container and the other way around. When not set, MountPropagationNone is used. This field is beta in 1.10. | [optional] 
**name** | **String** | This must match the Name of a Volume. | 
**read_only** | **Boolean** | Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false. | [optional] 
**sub_path** | **String** | Path within the volume from which the container&#39;s volume should be mounted. Defaults to \&quot;\&quot; (volume&#39;s root). | [optional] 
**sub_path_expr** | **String** | Expanded path within the volume from which the container&#39;s volume should be mounted. Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded using the container&#39;s environment. Defaults to \&quot;\&quot; (volume&#39;s root). SubPathExpr and SubPath are mutually exclusive. This field is alpha in 1.14. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1VolumeMount.new(mount_path: null,
                                 mount_propagation: null,
                                 name: null,
                                 read_only: null,
                                 sub_path: null,
                                 sub_path_expr: null)
```


