# Kubernetes::V1CSIVolumeSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**driver** | **String** | Driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster. | 
**fs_type** | **String** | Filesystem type to mount. Ex. \&quot;ext4\&quot;, \&quot;xfs\&quot;, \&quot;ntfs\&quot;. If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply. | [optional] 
**node_publish_secret_ref** | [**V1LocalObjectReference**](V1LocalObjectReference.md) |  | [optional] 
**read_only** | **Boolean** | Specifies a read-only configuration for the volume. Defaults to false (read/write). | [optional] 
**volume_attributes** | **Hash&lt;String, String&gt;** | VolumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver&#39;s documentation for supported values. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1CSIVolumeSource.new(driver: null,
                                 fs_type: null,
                                 node_publish_secret_ref: null,
                                 read_only: null,
                                 volume_attributes: null)
```


