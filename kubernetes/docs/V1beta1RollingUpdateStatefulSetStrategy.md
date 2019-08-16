# Kubernetes::V1beta1RollingUpdateStatefulSetStrategy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**partition** | **Integer** | Partition indicates the ordinal at which the StatefulSet should be partitioned. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1beta1RollingUpdateStatefulSetStrategy.new(partition: null)
```


