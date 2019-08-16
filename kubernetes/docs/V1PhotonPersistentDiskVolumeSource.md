# Kubernetes::V1PhotonPersistentDiskVolumeSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fs_type** | **String** | Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \&quot;ext4\&quot;, \&quot;xfs\&quot;, \&quot;ntfs\&quot;. Implicitly inferred to be \&quot;ext4\&quot; if unspecified. | [optional] 
**pd_id** | **String** | ID that identifies Photon Controller persistent disk | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1PhotonPersistentDiskVolumeSource.new(fs_type: null,
                                 pd_id: null)
```


