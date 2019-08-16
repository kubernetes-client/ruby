# Kubernetes::V1beta1DaemonSetStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**collision_count** | **Integer** | Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision. | [optional] 
**conditions** | [**Array&lt;V1beta1DaemonSetCondition&gt;**](V1beta1DaemonSetCondition.md) | Represents the latest available observations of a DaemonSet&#39;s current state. | [optional] 
**current_number_scheduled** | **Integer** | The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/ | 
**desired_number_scheduled** | **Integer** | The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/ | 
**number_available** | **Integer** | The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds) | [optional] 
**number_misscheduled** | **Integer** | The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/ | 
**number_ready** | **Integer** | The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and ready. | 
**number_unavailable** | **Integer** | The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds) | [optional] 
**observed_generation** | **Integer** | The most recent generation observed by the daemon set controller. | [optional] 
**updated_number_scheduled** | **Integer** | The total number of nodes that are running updated daemon pod | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1beta1DaemonSetStatus.new(collision_count: null,
                                 conditions: null,
                                 current_number_scheduled: null,
                                 desired_number_scheduled: null,
                                 number_available: null,
                                 number_misscheduled: null,
                                 number_ready: null,
                                 number_unavailable: null,
                                 observed_generation: null,
                                 updated_number_scheduled: null)
```


