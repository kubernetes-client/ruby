# Kubernetes::V1DaemonSetUpdateStrategy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rolling_update** | [**V1RollingUpdateDaemonSet**](V1RollingUpdateDaemonSet.md) |  | [optional] 
**type** | **String** | Type of daemon set update. Can be \&quot;RollingUpdate\&quot; or \&quot;OnDelete\&quot;. Default is RollingUpdate. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1DaemonSetUpdateStrategy.new(rolling_update: null,
                                 type: null)
```


