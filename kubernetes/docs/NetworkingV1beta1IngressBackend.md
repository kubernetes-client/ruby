# Kubernetes::NetworkingV1beta1IngressBackend

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_name** | **String** | Specifies the name of the referenced service. | 
**service_port** | [**Object**](.md) | Specifies the port of the referenced service. | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::NetworkingV1beta1IngressBackend.new(service_name: null,
                                 service_port: null)
```


