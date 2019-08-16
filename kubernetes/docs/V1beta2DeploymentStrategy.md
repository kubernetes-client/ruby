# Kubernetes::V1beta2DeploymentStrategy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rolling_update** | [**V1beta2RollingUpdateDeployment**](V1beta2RollingUpdateDeployment.md) |  | [optional] 
**type** | **String** | Type of deployment. Can be \&quot;Recreate\&quot; or \&quot;RollingUpdate\&quot;. Default is RollingUpdate. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1beta2DeploymentStrategy.new(rolling_update: null,
                                 type: null)
```


