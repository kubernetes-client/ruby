# Kubernetes::V1NetworkPolicyPort

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**port** | [**Object**](.md) | The port on the given protocol. This can either be a numerical or named port on a pod. If this field is not provided, this matches all port names and numbers. | [optional] 
**protocol** | **String** | The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1NetworkPolicyPort.new(port: null,
                                 protocol: null)
```


