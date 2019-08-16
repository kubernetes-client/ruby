# Kubernetes::V1AzureDiskVolumeSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**caching_mode** | **String** | Host Caching mode: None, Read Only, Read Write. | [optional] 
**disk_name** | **String** | The Name of the data disk in the blob storage | 
**disk_uri** | **String** | The URI the data disk in the blob storage | 
**fs_type** | **String** | Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \&quot;ext4\&quot;, \&quot;xfs\&quot;, \&quot;ntfs\&quot;. Implicitly inferred to be \&quot;ext4\&quot; if unspecified. | [optional] 
**kind** | **String** | Expected values Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared | [optional] 
**read_only** | **Boolean** | Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1AzureDiskVolumeSource.new(caching_mode: null,
                                 disk_name: null,
                                 disk_uri: null,
                                 fs_type: null,
                                 kind: null,
                                 read_only: null)
```


