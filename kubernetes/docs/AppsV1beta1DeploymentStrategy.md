# Kubernetes::AppsV1beta1DeploymentStrategy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rolling_update** | [**AppsV1beta1RollingUpdateDeployment**](AppsV1beta1RollingUpdateDeployment.md) |  | [optional] 
**type** | **String** | Type of deployment. Can be \&quot;Recreate\&quot; or \&quot;RollingUpdate\&quot;. Default is RollingUpdate. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::AppsV1beta1DeploymentStrategy.new(rolling_update: null,
                                 type: null)
```


