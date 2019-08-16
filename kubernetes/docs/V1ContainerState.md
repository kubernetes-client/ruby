# Kubernetes::V1ContainerState

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**running** | [**V1ContainerStateRunning**](V1ContainerStateRunning.md) |  | [optional] 
**terminated** | [**V1ContainerStateTerminated**](V1ContainerStateTerminated.md) |  | [optional] 
**waiting** | [**V1ContainerStateWaiting**](V1ContainerStateWaiting.md) |  | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1ContainerState.new(running: null,
                                 terminated: null,
                                 waiting: null)
```


