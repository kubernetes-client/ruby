# Kubernetes::V1ResourceQuotaStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hard** | **Hash&lt;String, String&gt;** | Hard is the set of enforced hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/ | [optional] 
**used** | **Hash&lt;String, String&gt;** | Used is the current observed total usage of the resource in the namespace. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1ResourceQuotaStatus.new(hard: null,
                                 used: null)
```


