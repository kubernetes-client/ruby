# Kubernetes::V1beta1DaemonSetUpdateStrategy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rolling_update** | [**V1beta1RollingUpdateDaemonSet**](V1beta1RollingUpdateDaemonSet.md) |  | [optional] 
**type** | **String** | Type of daemon set update. Can be \&quot;RollingUpdate\&quot; or \&quot;OnDelete\&quot;. Default is OnDelete. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1beta1DaemonSetUpdateStrategy.new(rolling_update: null,
                                 type: null)
```


