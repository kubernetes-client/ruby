# Kubernetes::V1NodeSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**config_source** | [**V1NodeConfigSource**](V1NodeConfigSource.md) | If specified, the source to get node configuration from The DynamicKubeletConfig feature gate must be enabled for the Kubelet to use this field | [optional] 
**external_id** | **String** | External ID of the node assigned by some machine database (e.g. a cloud provider). Deprecated. | [optional] 
**pod_cidr** | **String** | PodCIDR represents the pod IP range assigned to the node. | [optional] 
**provider_id** | **String** | ID of the node assigned by the cloud provider in the format: &lt;ProviderName&gt;://&lt;ProviderSpecificNodeID&gt; | [optional] 
**taints** | [**Array&lt;V1Taint&gt;**](V1Taint.md) | If specified, the node&#39;s taints. | [optional] 
**unschedulable** | **BOOLEAN** | Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration | [optional] 


