# Kubernetes::V1ISCSIVolumeSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chap_auth_discovery** | **Boolean** | whether support iSCSI Discovery CHAP authentication | [optional] 
**chap_auth_session** | **Boolean** | whether support iSCSI Session CHAP authentication | [optional] 
**fs_type** | **String** | Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \&quot;ext4\&quot;, \&quot;xfs\&quot;, \&quot;ntfs\&quot;. Implicitly inferred to be \&quot;ext4\&quot; if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi | [optional] 
**initiator_name** | **String** | Custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface &lt;target portal&gt;:&lt;volume name&gt; will be created for the connection. | [optional] 
**iqn** | **String** | Target iSCSI Qualified Name. | 
**iscsi_interface** | **String** | iSCSI Interface Name that uses an iSCSI transport. Defaults to &#39;default&#39; (tcp). | [optional] 
**lun** | **Integer** | iSCSI Target Lun number. | 
**portals** | **Array&lt;String&gt;** | iSCSI Target Portal List. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260). | [optional] 
**read_only** | **Boolean** | ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. | [optional] 
**secret_ref** | [**V1LocalObjectReference**](V1LocalObjectReference.md) |  | [optional] 
**target_portal** | **String** | iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260). | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1ISCSIVolumeSource.new(chap_auth_discovery: null,
                                 chap_auth_session: null,
                                 fs_type: null,
                                 initiator_name: null,
                                 iqn: null,
                                 iscsi_interface: null,
                                 lun: null,
                                 portals: null,
                                 read_only: null,
                                 secret_ref: null,
                                 target_portal: null)
```


