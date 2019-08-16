# Kubernetes::V1StatefulSetUpdateStrategy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rolling_update** | [**V1RollingUpdateStatefulSetStrategy**](V1RollingUpdateStatefulSetStrategy.md) |  | [optional] 
**type** | **String** | Type indicates the type of the StatefulSetUpdateStrategy. Default is RollingUpdate. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1StatefulSetUpdateStrategy.new(rolling_update: null,
                                 type: null)
```


