# Kubernetes::V1PodAffinityTerm

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label_selector** | [**V1LabelSelector**](V1LabelSelector.md) | A label query over a set of resources, in this case pods. | [optional] 
**namespaces** | **Array&lt;String&gt;** | namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means \&quot;this pod&#39;s namespace\&quot; | [optional] 
**topology_key** | **String** | This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed. | 


