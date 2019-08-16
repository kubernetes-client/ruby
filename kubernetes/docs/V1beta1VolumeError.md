# Kubernetes::V1beta1VolumeError

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **String** | String detailing the error encountered during Attach or Detach operation. This string may be logged, so it should not contain sensitive information. | [optional] 
**time** | **DateTime** | Time the error was encountered. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1beta1VolumeError.new(message: null,
                                 time: null)
```


