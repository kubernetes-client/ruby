# Kubernetes::V1AzureFilePersistentVolumeSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**read_only** | **Boolean** | Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. | [optional] 
**secret_name** | **String** | the name of secret that contains Azure Storage Account Name and Key | 
**secret_namespace** | **String** | the namespace of the secret that contains Azure Storage Account Name and Key default is the same as the Pod | [optional] 
**share_name** | **String** | Share Name | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1AzureFilePersistentVolumeSource.new(read_only: null,
                                 secret_name: null,
                                 secret_namespace: null,
                                 share_name: null)
```


