# Kubernetes::V1beta2DeploymentStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**available_replicas** | **Integer** | Total number of available pods (ready for at least minReadySeconds) targeted by this deployment. | [optional] 
**collision_count** | **Integer** | Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet. | [optional] 
**conditions** | [**Array&lt;V1beta2DeploymentCondition&gt;**](V1beta2DeploymentCondition.md) | Represents the latest available observations of a deployment&#39;s current state. | [optional] 
**observed_generation** | **Integer** | The generation observed by the deployment controller. | [optional] 
**ready_replicas** | **Integer** | Total number of ready pods targeted by this deployment. | [optional] 
**replicas** | **Integer** | Total number of non-terminated pods targeted by this deployment (their labels match the selector). | [optional] 
**unavailable_replicas** | **Integer** | Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created. | [optional] 
**updated_replicas** | **Integer** | Total number of non-terminated pods targeted by this deployment that have the desired template spec. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1beta2DeploymentStatus.new(available_replicas: null,
                                 collision_count: null,
                                 conditions: null,
                                 observed_generation: null,
                                 ready_replicas: null,
                                 replicas: null,
                                 unavailable_replicas: null,
                                 updated_replicas: null)
```


