# Kubernetes::V1APIServiceStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**conditions** | [**Array&lt;V1APIServiceCondition&gt;**](V1APIServiceCondition.md) | Current service state of apiService. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1APIServiceStatus.new(conditions: null)
```


