# Kubernetes::V1PersistentVolumeClaimStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_modes** | **Array&lt;String&gt;** | AccessModes contains the actual access modes the volume backing the PVC has. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1 | [optional] 
**capacity** | **Hash&lt;String, String&gt;** | Represents the actual resources of the underlying volume. | [optional] 
**conditions** | [**Array&lt;V1PersistentVolumeClaimCondition&gt;**](V1PersistentVolumeClaimCondition.md) | Current Condition of persistent volume claim. If underlying persistent volume is being resized then the Condition will be set to &#39;ResizeStarted&#39;. | [optional] 
**phase** | **String** | Phase represents the current phase of PersistentVolumeClaim. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1PersistentVolumeClaimStatus.new(access_modes: null,
                                 capacity: null,
                                 conditions: null,
                                 phase: null)
```


