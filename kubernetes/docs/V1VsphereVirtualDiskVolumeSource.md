# Kubernetes::V1VsphereVirtualDiskVolumeSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fs_type** | **String** | Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \&quot;ext4\&quot;, \&quot;xfs\&quot;, \&quot;ntfs\&quot;. Implicitly inferred to be \&quot;ext4\&quot; if unspecified. | [optional] 
**storage_policy_id** | **String** | Storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName. | [optional] 
**storage_policy_name** | **String** | Storage Policy Based Management (SPBM) profile name. | [optional] 
**volume_path** | **String** | Path that identifies vSphere volume vmdk | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1VsphereVirtualDiskVolumeSource.new(fs_type: null,
                                 storage_policy_id: null,
                                 storage_policy_name: null,
                                 volume_path: null)
```


