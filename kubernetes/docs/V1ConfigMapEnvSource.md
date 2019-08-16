# Kubernetes::V1ConfigMapEnvSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names | [optional] 
**optional** | **Boolean** | Specify whether the ConfigMap must be defined | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1ConfigMapEnvSource.new(name: null,
                                 optional: null)
```


