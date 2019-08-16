# Kubernetes::V1alpha1PodPresetSpec

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**env** | [**Array&lt;V1EnvVar&gt;**](V1EnvVar.md) | Env defines the collection of EnvVar to inject into containers. | [optional] 
**env_from** | [**Array&lt;V1EnvFromSource&gt;**](V1EnvFromSource.md) | EnvFrom defines the collection of EnvFromSource to inject into containers. | [optional] 
**selector** | [**V1LabelSelector**](V1LabelSelector.md) |  | [optional] 
**volume_mounts** | [**Array&lt;V1VolumeMount&gt;**](V1VolumeMount.md) | VolumeMounts defines the collection of VolumeMount to inject into containers. | [optional] 
**volumes** | [**Array&lt;V1Volume&gt;**](V1Volume.md) | Volumes defines the collection of Volume to inject into the pod. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1alpha1PodPresetSpec.new(env: null,
                                 env_from: null,
                                 selector: null,
                                 volume_mounts: null,
                                 volumes: null)
```


