# Kubernetes::V1beta1VolumeAttachmentSpec

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attacher** | **String** | Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName(). | 
**node_name** | **String** | The node that the volume should be attached to. | 
**source** | [**V1beta1VolumeAttachmentSource**](V1beta1VolumeAttachmentSource.md) |  | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1beta1VolumeAttachmentSpec.new(attacher: null,
                                 node_name: null,
                                 source: null)
```


