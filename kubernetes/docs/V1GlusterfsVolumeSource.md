# Kubernetes::V1GlusterfsVolumeSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**endpoints** | **String** | EndpointsName is the endpoint name that details Glusterfs topology. More info: https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod | 
**path** | **String** | Path is the Glusterfs volume path. More info: https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod | 
**read_only** | **Boolean** | ReadOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1GlusterfsVolumeSource.new(endpoints: null,
                                 path: null,
                                 read_only: null)
```


