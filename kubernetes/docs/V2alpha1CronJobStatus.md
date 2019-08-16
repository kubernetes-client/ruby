# Kubernetes::V2alpha1CronJobStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | [**Array&lt;V1ObjectReference&gt;**](V1ObjectReference.md) | A list of pointers to currently running jobs. | [optional] 
**last_schedule_time** | **DateTime** | Information when was the last time the job was successfully scheduled. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V2alpha1CronJobStatus.new(active: null,
                                 last_schedule_time: null)
```


