# Kubernetes::V1CSIPersistentVolumeSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**controller_publish_secret_ref** | [**V1SecretReference**](V1SecretReference.md) |  | [optional] 
**driver** | **String** | Driver is the name of the driver to use for this volume. Required. | 
**fs_type** | **String** | Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \&quot;ext4\&quot;, \&quot;xfs\&quot;, \&quot;ntfs\&quot;. | [optional] 
**node_publish_secret_ref** | [**V1SecretReference**](V1SecretReference.md) |  | [optional] 
**node_stage_secret_ref** | [**V1SecretReference**](V1SecretReference.md) |  | [optional] 
**read_only** | **Boolean** | Optional: The value to pass to ControllerPublishVolumeRequest. Defaults to false (read/write). | [optional] 
**volume_attributes** | **Hash&lt;String, String&gt;** | Attributes of the volume to publish. | [optional] 
**volume_handle** | **String** | VolumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required. | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1CSIPersistentVolumeSource.new(controller_publish_secret_ref: null,
                                 driver: null,
                                 fs_type: null,
                                 node_publish_secret_ref: null,
                                 node_stage_secret_ref: null,
                                 read_only: null,
                                 volume_attributes: null,
                                 volume_handle: null)
```


