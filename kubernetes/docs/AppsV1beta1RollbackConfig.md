# Kubernetes::AppsV1beta1RollbackConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**revision** | **Integer** | The revision to rollback to. If set to 0, rollback to the last revision. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::AppsV1beta1RollbackConfig.new(revision: null)
```


