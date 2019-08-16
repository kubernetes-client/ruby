# Kubernetes::V1EndpointPort

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of this port (corresponds to ServicePort.Name). Must be a DNS_LABEL. Optional only if one port is defined. | [optional] 
**port** | **Integer** | The port number of the endpoint. | 
**protocol** | **String** | The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1EndpointPort.new(name: null,
                                 port: null,
                                 protocol: null)
```


