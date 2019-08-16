# Kubernetes::V1beta1Event

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **String** | What action was taken/failed regarding to the regarding object. | [optional] 
**api_version** | **String** | APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources | [optional] 
**deprecated_count** | **Integer** | Deprecated field assuring backward compatibility with core.v1 Event type | [optional] 
**deprecated_first_timestamp** | **DateTime** | Deprecated field assuring backward compatibility with core.v1 Event type | [optional] 
**deprecated_last_timestamp** | **DateTime** | Deprecated field assuring backward compatibility with core.v1 Event type | [optional] 
**deprecated_source** | [**V1EventSource**](V1EventSource.md) |  | [optional] 
**event_time** | **DateTime** | Required. Time when this Event was first observed. | 
**kind** | **String** | Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds | [optional] 
**metadata** | [**V1ObjectMeta**](V1ObjectMeta.md) |  | [optional] 
**note** | **String** | Optional. A human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB. | [optional] 
**reason** | **String** | Why the action was taken. | [optional] 
**regarding** | [**V1ObjectReference**](V1ObjectReference.md) |  | [optional] 
**related** | [**V1ObjectReference**](V1ObjectReference.md) |  | [optional] 
**reporting_controller** | **String** | Name of the controller that emitted this Event, e.g. &#x60;kubernetes.io/kubelet&#x60;. | [optional] 
**reporting_instance** | **String** | ID of the controller instance, e.g. &#x60;kubelet-xyzf&#x60;. | [optional] 
**series** | [**V1beta1EventSeries**](V1beta1EventSeries.md) |  | [optional] 
**type** | **String** | Type of this event (Normal, Warning), new types could be added in the future. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1beta1Event.new(action: null,
                                 api_version: null,
                                 deprecated_count: null,
                                 deprecated_first_timestamp: null,
                                 deprecated_last_timestamp: null,
                                 deprecated_source: null,
                                 event_time: null,
                                 kind: null,
                                 metadata: null,
                                 note: null,
                                 reason: null,
                                 regarding: null,
                                 related: null,
                                 reporting_controller: null,
                                 reporting_instance: null,
                                 series: null,
                                 type: null)
```


