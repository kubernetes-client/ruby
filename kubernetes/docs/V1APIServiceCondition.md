# Kubernetes::V1APIServiceCondition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**last_transition_time** | **DateTime** | Last time the condition transitioned from one status to another. | [optional] 
**message** | **String** | Human-readable message indicating details about last transition. | [optional] 
**reason** | **String** | Unique, one-word, CamelCase reason for the condition&#39;s last transition. | [optional] 
**status** | **String** | Status is the status of the condition. Can be True, False, Unknown. | 
**type** | **String** | Type is the type of the condition. | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1APIServiceCondition.new(last_transition_time: null,
                                 message: null,
                                 reason: null,
                                 status: null,
                                 type: null)
```


