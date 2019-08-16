# Kubernetes::V1CinderPersistentVolumeSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fs_type** | **String** | Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: \&quot;ext4\&quot;, \&quot;xfs\&quot;, \&quot;ntfs\&quot;. Implicitly inferred to be \&quot;ext4\&quot; if unspecified. More info: https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md | [optional] 
**read_only** | **Boolean** | Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md | [optional] 
**secret_ref** | [**V1SecretReference**](V1SecretReference.md) |  | [optional] 
**volume_id** | **String** | volume id used to identify the volume in cinder More info: https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1CinderPersistentVolumeSource.new(fs_type: null,
                                 read_only: null,
                                 secret_ref: null,
                                 volume_id: null)
```


