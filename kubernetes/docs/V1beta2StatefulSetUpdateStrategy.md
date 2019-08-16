# Kubernetes::V1beta2StatefulSetUpdateStrategy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rolling_update** | [**V1beta2RollingUpdateStatefulSetStrategy**](V1beta2RollingUpdateStatefulSetStrategy.md) |  | [optional] 
**type** | **String** | Type indicates the type of the StatefulSetUpdateStrategy. Default is RollingUpdate. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1beta2StatefulSetUpdateStrategy.new(rolling_update: null,
                                 type: null)
```


