# Kubernetes::V1EnvFromSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**config_map_ref** | [**V1ConfigMapEnvSource**](V1ConfigMapEnvSource.md) |  | [optional] 
**prefix** | **String** | An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER. | [optional] 
**secret_ref** | [**V1SecretEnvSource**](V1SecretEnvSource.md) |  | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1EnvFromSource.new(config_map_ref: null,
                                 prefix: null,
                                 secret_ref: null)
```


