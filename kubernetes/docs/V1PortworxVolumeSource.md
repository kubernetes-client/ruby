# Kubernetes::V1PortworxVolumeSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fs_type** | **String** | FSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. \&quot;ext4\&quot;, \&quot;xfs\&quot;. Implicitly inferred to be \&quot;ext4\&quot; if unspecified. | [optional] 
**read_only** | **Boolean** | Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. | [optional] 
**volume_id** | **String** | VolumeID uniquely identifies a Portworx volume | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1PortworxVolumeSource.new(fs_type: null,
                                 read_only: null,
                                 volume_id: null)
```


