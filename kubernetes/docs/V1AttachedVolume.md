# Kubernetes::V1AttachedVolume

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**device_path** | **String** | DevicePath represents the device path where the volume should be available | 
**name** | **String** | Name of the attached volume | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1AttachedVolume.new(device_path: null,
                                 name: null)
```


