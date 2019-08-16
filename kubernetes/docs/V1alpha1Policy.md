# Kubernetes::V1alpha1Policy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**level** | **String** | The Level that all requests are recorded at. available options: None, Metadata, Request, RequestResponse required | 
**stages** | **Array&lt;String&gt;** | Stages is a list of stages for which events are created. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1alpha1Policy.new(level: null,
                                 stages: null)
```


