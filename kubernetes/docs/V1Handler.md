# Kubernetes::V1Handler

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exec** | [**V1ExecAction**](V1ExecAction.md) |  | [optional] 
**http_get** | [**V1HTTPGetAction**](V1HTTPGetAction.md) |  | [optional] 
**tcp_socket** | [**V1TCPSocketAction**](V1TCPSocketAction.md) |  | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1Handler.new(exec: null,
                                 http_get: null,
                                 tcp_socket: null)
```


