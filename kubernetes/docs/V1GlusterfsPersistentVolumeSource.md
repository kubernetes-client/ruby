# Kubernetes::V1GlusterfsPersistentVolumeSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**endpoints** | **String** | EndpointsName is the endpoint name that details Glusterfs topology. More info: https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod | 
**endpoints_namespace** | **String** | EndpointsNamespace is the namespace that contains Glusterfs endpoint. If this field is empty, the EndpointNamespace defaults to the same namespace as the bound PVC. More info: https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod | [optional] 
**path** | **String** | Path is the Glusterfs volume path. More info: https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod | 
**read_only** | **Boolean** | ReadOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md#create-a-pod | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1GlusterfsPersistentVolumeSource.new(endpoints: null,
                                 endpoints_namespace: null,
                                 path: null,
                                 read_only: null)
```


