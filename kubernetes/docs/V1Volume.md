# Kubernetes::V1Volume

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**aws_elastic_block_store** | [**V1AWSElasticBlockStoreVolumeSource**](V1AWSElasticBlockStoreVolumeSource.md) |  | [optional] 
**azure_disk** | [**V1AzureDiskVolumeSource**](V1AzureDiskVolumeSource.md) |  | [optional] 
**azure_file** | [**V1AzureFileVolumeSource**](V1AzureFileVolumeSource.md) |  | [optional] 
**cephfs** | [**V1CephFSVolumeSource**](V1CephFSVolumeSource.md) |  | [optional] 
**cinder** | [**V1CinderVolumeSource**](V1CinderVolumeSource.md) |  | [optional] 
**config_map** | [**V1ConfigMapVolumeSource**](V1ConfigMapVolumeSource.md) |  | [optional] 
**csi** | [**V1CSIVolumeSource**](V1CSIVolumeSource.md) |  | [optional] 
**downward_api** | [**V1DownwardAPIVolumeSource**](V1DownwardAPIVolumeSource.md) |  | [optional] 
**empty_dir** | [**V1EmptyDirVolumeSource**](V1EmptyDirVolumeSource.md) |  | [optional] 
**fc** | [**V1FCVolumeSource**](V1FCVolumeSource.md) |  | [optional] 
**flex_volume** | [**V1FlexVolumeSource**](V1FlexVolumeSource.md) |  | [optional] 
**flocker** | [**V1FlockerVolumeSource**](V1FlockerVolumeSource.md) |  | [optional] 
**gce_persistent_disk** | [**V1GCEPersistentDiskVolumeSource**](V1GCEPersistentDiskVolumeSource.md) |  | [optional] 
**git_repo** | [**V1GitRepoVolumeSource**](V1GitRepoVolumeSource.md) |  | [optional] 
**glusterfs** | [**V1GlusterfsVolumeSource**](V1GlusterfsVolumeSource.md) |  | [optional] 
**host_path** | [**V1HostPathVolumeSource**](V1HostPathVolumeSource.md) |  | [optional] 
**iscsi** | [**V1ISCSIVolumeSource**](V1ISCSIVolumeSource.md) |  | [optional] 
**name** | **String** | Volume&#39;s name. Must be a DNS_LABEL and unique within the pod. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names | 
**nfs** | [**V1NFSVolumeSource**](V1NFSVolumeSource.md) |  | [optional] 
**persistent_volume_claim** | [**V1PersistentVolumeClaimVolumeSource**](V1PersistentVolumeClaimVolumeSource.md) |  | [optional] 
**photon_persistent_disk** | [**V1PhotonPersistentDiskVolumeSource**](V1PhotonPersistentDiskVolumeSource.md) |  | [optional] 
**portworx_volume** | [**V1PortworxVolumeSource**](V1PortworxVolumeSource.md) |  | [optional] 
**projected** | [**V1ProjectedVolumeSource**](V1ProjectedVolumeSource.md) |  | [optional] 
**quobyte** | [**V1QuobyteVolumeSource**](V1QuobyteVolumeSource.md) |  | [optional] 
**rbd** | [**V1RBDVolumeSource**](V1RBDVolumeSource.md) |  | [optional] 
**scale_io** | [**V1ScaleIOVolumeSource**](V1ScaleIOVolumeSource.md) |  | [optional] 
**secret** | [**V1SecretVolumeSource**](V1SecretVolumeSource.md) |  | [optional] 
**storageos** | [**V1StorageOSVolumeSource**](V1StorageOSVolumeSource.md) |  | [optional] 
**vsphere_volume** | [**V1VsphereVirtualDiskVolumeSource**](V1VsphereVirtualDiskVolumeSource.md) |  | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1Volume.new(aws_elastic_block_store: null,
                                 azure_disk: null,
                                 azure_file: null,
                                 cephfs: null,
                                 cinder: null,
                                 config_map: null,
                                 csi: null,
                                 downward_api: null,
                                 empty_dir: null,
                                 fc: null,
                                 flex_volume: null,
                                 flocker: null,
                                 gce_persistent_disk: null,
                                 git_repo: null,
                                 glusterfs: null,
                                 host_path: null,
                                 iscsi: null,
                                 name: null,
                                 nfs: null,
                                 persistent_volume_claim: null,
                                 photon_persistent_disk: null,
                                 portworx_volume: null,
                                 projected: null,
                                 quobyte: null,
                                 rbd: null,
                                 scale_io: null,
                                 secret: null,
                                 storageos: null,
                                 vsphere_volume: null)
```


