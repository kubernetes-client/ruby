# Kubernetes::V1Affinity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**node_affinity** | [**V1NodeAffinity**](V1NodeAffinity.md) |  | [optional] 
**pod_affinity** | [**V1PodAffinity**](V1PodAffinity.md) |  | [optional] 
**pod_anti_affinity** | [**V1PodAntiAffinity**](V1PodAntiAffinity.md) |  | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1Affinity.new(node_affinity: null,
                                 pod_affinity: null,
                                 pod_anti_affinity: null)
```


