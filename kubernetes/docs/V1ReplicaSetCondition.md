# Kubernetes::V1ReplicaSetCondition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**last_transition_time** | **DateTime** | The last time the condition transitioned from one status to another. | [optional] 
**message** | **String** | A human readable message indicating details about the transition. | [optional] 
**reason** | **String** | The reason for the condition&#39;s last transition. | [optional] 
**status** | **String** | Status of the condition, one of True, False, Unknown. | 
**type** | **String** | Type of replica set condition. | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1ReplicaSetCondition.new(last_transition_time: null,
                                 message: null,
                                 reason: null,
                                 status: null,
                                 type: null)
```


