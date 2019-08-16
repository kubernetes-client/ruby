# Kubernetes::V1NodeSpec

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**config_source** | [**V1NodeConfigSource**](V1NodeConfigSource.md) |  | [optional] 
**external_id** | **String** | Deprecated. Not all kubelets will set this field. Remove field after 1.13. see: https://issues.k8s.io/61966 | [optional] 
**pod_cidr** | **String** | PodCIDR represents the pod IP range assigned to the node. | [optional] 
**provider_id** | **String** | ID of the node assigned by the cloud provider in the format: &lt;ProviderName&gt;://&lt;ProviderSpecificNodeID&gt; | [optional] 
**taints** | [**Array&lt;V1Taint&gt;**](V1Taint.md) | If specified, the node&#39;s taints. | [optional] 
**unschedulable** | **Boolean** | Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1NodeSpec.new(config_source: null,
                                 external_id: null,
                                 pod_cidr: null,
                                 provider_id: null,
                                 taints: null,
                                 unschedulable: null)
```


