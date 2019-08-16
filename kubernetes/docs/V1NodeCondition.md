# Kubernetes::V1NodeCondition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**last_heartbeat_time** | **DateTime** | Last time we got an update on a given condition. | [optional] 
**last_transition_time** | **DateTime** | Last time the condition transit from one status to another. | [optional] 
**message** | **String** | Human readable message indicating details about last transition. | [optional] 
**reason** | **String** | (brief) reason for the condition&#39;s last transition. | [optional] 
**status** | **String** | Status of the condition, one of True, False, Unknown. | 
**type** | **String** | Type of node condition. | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1NodeCondition.new(last_heartbeat_time: null,
                                 last_transition_time: null,
                                 message: null,
                                 reason: null,
                                 status: null,
                                 type: null)
```


