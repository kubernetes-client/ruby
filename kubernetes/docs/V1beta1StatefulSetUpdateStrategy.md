# Kubernetes::V1beta1StatefulSetUpdateStrategy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rolling_update** | [**V1beta1RollingUpdateStatefulSetStrategy**](V1beta1RollingUpdateStatefulSetStrategy.md) |  | [optional] 
**type** | **String** | Type indicates the type of the StatefulSetUpdateStrategy. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1beta1StatefulSetUpdateStrategy.new(rolling_update: null,
                                 type: null)
```


