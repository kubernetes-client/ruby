# Kubernetes::V1ScaleIOVolumeSource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fs_type** | **String** | Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \&quot;ext4\&quot;, \&quot;xfs\&quot;, \&quot;ntfs\&quot;. Default is \&quot;xfs\&quot;. | [optional] 
**gateway** | **String** | The host address of the ScaleIO API Gateway. | 
**protection_domain** | **String** | The name of the ScaleIO Protection Domain for the configured storage. | [optional] 
**read_only** | **BOOLEAN** | Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. | [optional] 
**secret_ref** | [**V1LocalObjectReference**](V1LocalObjectReference.md) | SecretRef references to the secret for ScaleIO user and other sensitive information. If this is not provided, Login operation will fail. | 
**ssl_enabled** | **BOOLEAN** | Flag to enable/disable SSL communication with Gateway, default false | [optional] 
**storage_mode** | **String** | Indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned. | [optional] 
**storage_pool** | **String** | The ScaleIO Storage Pool associated with the protection domain. | [optional] 
**system** | **String** | The name of the storage system as configured in ScaleIO. | 
**volume_name** | **String** | The name of a volume already created in the ScaleIO system that is associated with this volume source. | [optional] 


