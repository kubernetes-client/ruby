# Kubernetes::V1ReplicationControllerStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**available_replicas** | **Integer** | The number of available replicas (ready for at least minReadySeconds) for this replication controller. | [optional] 
**conditions** | [**Array&lt;V1ReplicationControllerCondition&gt;**](V1ReplicationControllerCondition.md) | Represents the latest available observations of a replication controller&#39;s current state. | [optional] 
**fully_labeled_replicas** | **Integer** | The number of pods that have labels matching the labels of the pod template of the replication controller. | [optional] 
**observed_generation** | **Integer** | ObservedGeneration reflects the generation of the most recently observed replication controller. | [optional] 
**ready_replicas** | **Integer** | The number of ready replicas for this replication controller. | [optional] 
**replicas** | **Integer** | Replicas is the most recently oberved number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1ReplicationControllerStatus.new(available_replicas: null,
                                 conditions: null,
                                 fully_labeled_replicas: null,
                                 observed_generation: null,
                                 ready_replicas: null,
                                 replicas: null)
```


