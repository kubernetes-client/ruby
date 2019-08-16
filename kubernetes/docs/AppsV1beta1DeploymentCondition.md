# Kubernetes::AppsV1beta1DeploymentCondition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**last_transition_time** | **DateTime** | Last time the condition transitioned from one status to another. | [optional] 
**last_update_time** | **DateTime** | The last time this condition was updated. | [optional] 
**message** | **String** | A human readable message indicating details about the transition. | [optional] 
**reason** | **String** | The reason for the condition&#39;s last transition. | [optional] 
**status** | **String** | Status of the condition, one of True, False, Unknown. | 
**type** | **String** | Type of deployment condition. | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::AppsV1beta1DeploymentCondition.new(last_transition_time: null,
                                 last_update_time: null,
                                 message: null,
                                 reason: null,
                                 status: null,
                                 type: null)
```


