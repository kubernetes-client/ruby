# Kubernetes::V1beta1NetworkPolicyPeer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ip_block** | [**V1beta1IPBlock**](V1beta1IPBlock.md) |  | [optional] 
**namespace_selector** | [**V1LabelSelector**](V1LabelSelector.md) |  | [optional] 
**pod_selector** | [**V1LabelSelector**](V1LabelSelector.md) |  | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1beta1NetworkPolicyPeer.new(ip_block: null,
                                 namespace_selector: null,
                                 pod_selector: null)
```


