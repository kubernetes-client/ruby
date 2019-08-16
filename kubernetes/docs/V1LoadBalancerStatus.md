# Kubernetes::V1LoadBalancerStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ingress** | [**Array&lt;V1LoadBalancerIngress&gt;**](V1LoadBalancerIngress.md) | Ingress is a list containing ingress points for the load-balancer. Traffic intended for the service should be sent to these ingress points. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1LoadBalancerStatus.new(ingress: null)
```


