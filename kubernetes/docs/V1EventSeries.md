# Kubernetes::V1EventSeries

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **Integer** | Number of occurrences in this series up to the last heartbeat time | [optional] 
**last_observed_time** | **DateTime** | Time of the last occurrence observed | [optional] 
**state** | **String** | State of this Series: Ongoing or Finished | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1EventSeries.new(count: null,
                                 last_observed_time: null,
                                 state: null)
```


