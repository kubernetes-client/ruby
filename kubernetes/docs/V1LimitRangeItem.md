# Kubernetes::V1LimitRangeItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default** | **Hash&lt;String, String&gt;** | Default resource requirement limit value by resource name if resource limit is omitted. | [optional] 
**default_request** | **Hash&lt;String, String&gt;** | DefaultRequest is the default resource requirement request value by resource name if resource request is omitted. | [optional] 
**max** | **Hash&lt;String, String&gt;** | Max usage constraints on this kind by resource name. | [optional] 
**max_limit_request_ratio** | **Hash&lt;String, String&gt;** | MaxLimitRequestRatio if specified, the named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource. | [optional] 
**min** | **Hash&lt;String, String&gt;** | Min usage constraints on this kind by resource name. | [optional] 
**type** | **String** | Type of resource that this limit applies to. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1LimitRangeItem.new(default: null,
                                 default_request: null,
                                 max: null,
                                 max_limit_request_ratio: null,
                                 min: null,
                                 type: null)
```


