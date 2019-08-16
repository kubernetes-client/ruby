# Kubernetes::V1NodeStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**addresses** | [**Array&lt;V1NodeAddress&gt;**](V1NodeAddress.md) | List of addresses reachable to the node. Queried from cloud provider, if available. More info: https://kubernetes.io/docs/concepts/nodes/node/#addresses | [optional] 
**allocatable** | **Hash&lt;String, String&gt;** | Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity. | [optional] 
**capacity** | **Hash&lt;String, String&gt;** | Capacity represents the total resources of a node. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity | [optional] 
**conditions** | [**Array&lt;V1NodeCondition&gt;**](V1NodeCondition.md) | Conditions is an array of current observed node conditions. More info: https://kubernetes.io/docs/concepts/nodes/node/#condition | [optional] 
**config** | [**V1NodeConfigStatus**](V1NodeConfigStatus.md) |  | [optional] 
**daemon_endpoints** | [**V1NodeDaemonEndpoints**](V1NodeDaemonEndpoints.md) |  | [optional] 
**images** | [**Array&lt;V1ContainerImage&gt;**](V1ContainerImage.md) | List of container images on this node | [optional] 
**node_info** | [**V1NodeSystemInfo**](V1NodeSystemInfo.md) |  | [optional] 
**phase** | **String** | NodePhase is the recently observed lifecycle phase of the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated. | [optional] 
**volumes_attached** | [**Array&lt;V1AttachedVolume&gt;**](V1AttachedVolume.md) | List of volumes that are attached to the node. | [optional] 
**volumes_in_use** | **Array&lt;String&gt;** | List of attachable volumes in use (mounted) by the node. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1NodeStatus.new(addresses: null,
                                 allocatable: null,
                                 capacity: null,
                                 conditions: null,
                                 config: null,
                                 daemon_endpoints: null,
                                 images: null,
                                 node_info: null,
                                 phase: null,
                                 volumes_attached: null,
                                 volumes_in_use: null)
```


