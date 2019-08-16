# Kubernetes::V1alpha1WebhookThrottleConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**burst** | **Integer** | ThrottleBurst is the maximum number of events sent at the same moment default 15 QPS | [optional] 
**qps** | **Integer** | ThrottleQPS maximum number of batches per second default 10 QPS | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1alpha1WebhookThrottleConfig.new(burst: null,
                                 qps: null)
```


