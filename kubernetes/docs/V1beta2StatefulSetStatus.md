# Kubernetes::V1beta2StatefulSetStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**collision_count** | **Integer** | collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision. | [optional] 
**current_replicas** | **Integer** | currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision. | [optional] 
**current_revision** | **String** | currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas). | [optional] 
**observed_generation** | **Integer** | observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet&#39;s generation, which is updated on mutation by the API Server. | [optional] 
**ready_replicas** | **Integer** | readyReplicas is the number of Pods created by the StatefulSet controller that have a Ready Condition. | [optional] 
**replicas** | **Integer** | replicas is the number of Pods created by the StatefulSet controller. | 
**update_revision** | **String** | updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas) | [optional] 
**updated_replicas** | **Integer** | updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision. | [optional] 


