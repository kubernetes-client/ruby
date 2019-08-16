# Kubernetes::V1beta1NetworkPolicyPort

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**port** | [**Object**](.md) | If specified, the port on the given protocol.  This can either be a numerical or named port on a pod.  If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched. | [optional] 
**protocol** | **String** | Optional.  The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1beta1NetworkPolicyPort.new(port: null,
                                 protocol: null)
```


