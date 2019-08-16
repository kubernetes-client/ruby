# Kubernetes::V1beta1CustomResourceSubresourceScale

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label_selector_path** | **String** | LabelSelectorPath defines the JSON path inside of a CustomResource that corresponds to Scale.Status.Selector. Only JSON paths without the array notation are allowed. Must be a JSON Path under .status. Must be set to work with HPA. If there is no value under the given path in the CustomResource, the status label selector value in the /scale subresource will default to the empty string. | [optional] 
**spec_replicas_path** | **String** | SpecReplicasPath defines the JSON path inside of a CustomResource that corresponds to Scale.Spec.Replicas. Only JSON paths without the array notation are allowed. Must be a JSON Path under .spec. If there is no value under the given path in the CustomResource, the /scale subresource will return an error on GET. | 
**status_replicas_path** | **String** | StatusReplicasPath defines the JSON path inside of a CustomResource that corresponds to Scale.Status.Replicas. Only JSON paths without the array notation are allowed. Must be a JSON Path under .status. If there is no value under the given path in the CustomResource, the status replica value in the /scale subresource will default to 0. | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1beta1CustomResourceSubresourceScale.new(label_selector_path: null,
                                 spec_replicas_path: null,
                                 status_replicas_path: null)
```


