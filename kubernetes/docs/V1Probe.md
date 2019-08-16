# Kubernetes::V1Probe

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exec** | [**V1ExecAction**](V1ExecAction.md) |  | [optional] 
**failure_threshold** | **Integer** | Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1. | [optional] 
**http_get** | [**V1HTTPGetAction**](V1HTTPGetAction.md) |  | [optional] 
**initial_delay_seconds** | **Integer** | Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes | [optional] 
**period_seconds** | **Integer** | How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. | [optional] 
**success_threshold** | **Integer** | Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness. Minimum value is 1. | [optional] 
**tcp_socket** | [**V1TCPSocketAction**](V1TCPSocketAction.md) |  | [optional] 
**timeout_seconds** | **Integer** | Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1Probe.new(exec: null,
                                 failure_threshold: null,
                                 http_get: null,
                                 initial_delay_seconds: null,
                                 period_seconds: null,
                                 success_threshold: null,
                                 tcp_socket: null,
                                 timeout_seconds: null)
```


