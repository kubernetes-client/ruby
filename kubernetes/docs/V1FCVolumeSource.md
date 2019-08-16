# Kubernetes::V1FCVolumeSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fs_type** | **String** | Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \&quot;ext4\&quot;, \&quot;xfs\&quot;, \&quot;ntfs\&quot;. Implicitly inferred to be \&quot;ext4\&quot; if unspecified. | [optional] 
**lun** | **Integer** | Optional: FC target lun number | [optional] 
**read_only** | **Boolean** | Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. | [optional] 
**target_ww_ns** | **Array&lt;String&gt;** | Optional: FC target worldwide names (WWNs) | [optional] 
**wwids** | **Array&lt;String&gt;** | Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1FCVolumeSource.new(fs_type: null,
                                 lun: null,
                                 read_only: null,
                                 target_ww_ns: null,
                                 wwids: null)
```


