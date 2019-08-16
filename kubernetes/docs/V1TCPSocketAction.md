# Kubernetes::V1TCPSocketAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**host** | **String** | Optional: Host name to connect to, defaults to the pod IP. | [optional] 
**port** | [**Object**](.md) | Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1TCPSocketAction.new(host: null,
                                 port: null)
```


