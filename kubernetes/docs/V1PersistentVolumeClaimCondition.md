# Kubernetes::V1PersistentVolumeClaimCondition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**last_probe_time** | **DateTime** | Last time we probed the condition. | [optional] 
**last_transition_time** | **DateTime** | Last time the condition transitioned from one status to another. | [optional] 
**message** | **String** | Human-readable message indicating details about last transition. | [optional] 
**reason** | **String** | Unique, this should be a short, machine understandable string that gives the reason for condition&#39;s last transition. If it reports \&quot;ResizeStarted\&quot; that means the underlying persistent volume is being resized. | [optional] 
**status** | **String** |  | 
**type** | **String** |  | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1PersistentVolumeClaimCondition.new(last_probe_time: null,
                                 last_transition_time: null,
                                 message: null,
                                 reason: null,
                                 status: null,
                                 type: null)
```


