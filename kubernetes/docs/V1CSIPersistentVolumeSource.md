# Kubernetes::V1CSIPersistentVolumeSource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**controller_publish_secret_ref** | [**V1SecretReference**](V1SecretReference.md) | ControllerPublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerPublishVolume and ControllerUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed. | [optional] 
**driver** | **String** | Driver is the name of the driver to use for this volume. Required. | 
**fs_type** | **String** | Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \&quot;ext4\&quot;, \&quot;xfs\&quot;, \&quot;ntfs\&quot;. | [optional] 
**node_publish_secret_ref** | [**V1SecretReference**](V1SecretReference.md) | NodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed. | [optional] 
**node_stage_secret_ref** | [**V1SecretReference**](V1SecretReference.md) | NodeStageSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeStageVolume and NodeStageVolume and NodeUnstageVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed. | [optional] 
**read_only** | **BOOLEAN** | Optional: The value to pass to ControllerPublishVolumeRequest. Defaults to false (read/write). | [optional] 
**volume_attributes** | **Hash&lt;String, String&gt;** | Attributes of the volume to publish. | [optional] 
**volume_handle** | **String** | VolumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required. | 


