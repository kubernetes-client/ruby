# Kubernetes::V1WeightedPodAffinityTerm

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pod_affinity_term** | [**V1PodAffinityTerm**](V1PodAffinityTerm.md) |  | 
**weight** | **Integer** | weight associated with matching the corresponding podAffinityTerm, in the range 1-100. | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1WeightedPodAffinityTerm.new(pod_affinity_term: null,
                                 weight: null)
```


