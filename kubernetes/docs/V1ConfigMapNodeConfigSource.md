# Kubernetes::V1ConfigMapNodeConfigSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kubelet_config_key** | **String** | KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the KubeletConfiguration structure This field is required in all cases. | 
**name** | **String** | Name is the metadata.name of the referenced ConfigMap. This field is required in all cases. | 
**namespace** | **String** | Namespace is the metadata.namespace of the referenced ConfigMap. This field is required in all cases. | 
**resource_version** | **String** | ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status. | [optional] 
**uid** | **String** | UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1ConfigMapNodeConfigSource.new(kubelet_config_key: null,
                                 name: null,
                                 namespace: null,
                                 resource_version: null,
                                 uid: null)
```


