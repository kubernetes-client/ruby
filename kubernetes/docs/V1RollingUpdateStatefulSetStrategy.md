# Kubernetes::V1RollingUpdateStatefulSetStrategy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**partition** | **Integer** | Partition indicates the ordinal at which the StatefulSet should be partitioned. Default value is 0. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1RollingUpdateStatefulSetStrategy.new(partition: null)
```


