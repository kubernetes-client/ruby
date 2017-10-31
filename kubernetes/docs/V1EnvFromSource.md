# Kubernetes::V1EnvFromSource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**config_map_ref** | [**V1ConfigMapEnvSource**](V1ConfigMapEnvSource.md) | The ConfigMap to select from | [optional] 
**prefix** | **String** | An optional identifer to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER. | [optional] 
**secret_ref** | [**V1SecretEnvSource**](V1SecretEnvSource.md) | The Secret to select from | [optional] 


