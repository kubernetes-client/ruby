# Kubernetes::V2beta2HorizontalPodAutoscalerCondition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**last_transition_time** | **DateTime** | lastTransitionTime is the last time the condition transitioned from one status to another | [optional] 
**message** | **String** | message is a human-readable explanation containing details about the transition | [optional] 
**reason** | **String** | reason is the reason for the condition&#39;s last transition. | [optional] 
**status** | **String** | status is the status of the condition (True, False, Unknown) | 
**type** | **String** | type describes the current condition | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V2beta2HorizontalPodAutoscalerCondition.new(last_transition_time: null,
                                 message: null,
                                 reason: null,
                                 status: null,
                                 type: null)
```


