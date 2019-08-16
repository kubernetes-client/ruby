# Kubernetes::V1ContainerStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**container_id** | **String** | Container&#39;s ID in the format &#39;docker://&lt;container_id&gt;&#39;. | [optional] 
**image** | **String** | The image the container is running. More info: https://kubernetes.io/docs/concepts/containers/images | 
**image_id** | **String** | ImageID of the container&#39;s image. | 
**last_state** | [**V1ContainerState**](V1ContainerState.md) |  | [optional] 
**name** | **String** | This must be a DNS_LABEL. Each container in a pod must have a unique name. Cannot be updated. | 
**ready** | **Boolean** | Specifies whether the container has passed its readiness probe. | 
**restart_count** | **Integer** | The number of times the container has been restarted, currently based on the number of dead containers that have not yet been removed. Note that this is calculated from dead containers. But those containers are subject to garbage collection. This value will get capped at 5 by GC. | 
**state** | [**V1ContainerState**](V1ContainerState.md) |  | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1ContainerStatus.new(container_id: null,
                                 image: null,
                                 image_id: null,
                                 last_state: null,
                                 name: null,
                                 ready: null,
                                 restart_count: null,
                                 state: null)
```


