# Kubernetes::V1EventSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**component** | **String** | Component from which the event is generated. | [optional] 
**host** | **String** | Node name on which the event is generated. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1EventSource.new(component: null,
                                 host: null)
```


