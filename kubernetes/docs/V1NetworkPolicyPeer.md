# Kubernetes::V1NetworkPolicyPeer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ip_block** | [**V1IPBlock**](V1IPBlock.md) |  | [optional] 
**namespace_selector** | [**V1LabelSelector**](V1LabelSelector.md) |  | [optional] 
**pod_selector** | [**V1LabelSelector**](V1LabelSelector.md) |  | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1NetworkPolicyPeer.new(ip_block: null,
                                 namespace_selector: null,
                                 pod_selector: null)
```


