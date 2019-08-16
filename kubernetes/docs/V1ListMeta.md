# Kubernetes::V1ListMeta

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**continue** | **String** | continue may be set if the user set a limit on the number of items returned, and indicates that the server has more data available. The value is opaque and may be used to issue another request to the endpoint that served this list to retrieve the next set of available objects. Continuing a consistent list may not be possible if the server configuration has changed or more than a few minutes have passed. The resourceVersion field returned when using this continue value will be identical to the value in the first response, unless you have received this token from an error message. | [optional] 
**resource_version** | **String** | String that identifies the server&#39;s internal version of this object that can be used by clients to determine when objects have changed. Value must be treated as opaque by clients and passed unmodified back to the server. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency | [optional] 
**self_link** | **String** | selfLink is a URL representing this object. Populated by the system. Read-only. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1ListMeta.new(continue: null,
                                 resource_version: null,
                                 self_link: null)
```


