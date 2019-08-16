# Kubernetes::V1alpha1Webhook

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_config** | [**V1alpha1WebhookClientConfig**](V1alpha1WebhookClientConfig.md) |  | 
**throttle** | [**V1alpha1WebhookThrottleConfig**](V1alpha1WebhookThrottleConfig.md) |  | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1alpha1Webhook.new(client_config: null,
                                 throttle: null)
```


