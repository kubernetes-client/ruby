# Kubernetes::V1VolumeDevice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**device_path** | **String** | devicePath is the path inside of the container that the device will be mapped to. | 
**name** | **String** | name must match the name of a persistentVolumeClaim in the pod | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1VolumeDevice.new(device_path: null,
                                 name: null)
```


