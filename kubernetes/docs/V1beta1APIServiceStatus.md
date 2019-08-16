# Kubernetes::V1beta1APIServiceStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**conditions** | [**Array&lt;V1beta1APIServiceCondition&gt;**](V1beta1APIServiceCondition.md) | Current service state of apiService. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1beta1APIServiceStatus.new(conditions: null)
```


