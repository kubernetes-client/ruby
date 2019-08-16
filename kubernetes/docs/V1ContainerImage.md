# Kubernetes::V1ContainerImage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**names** | **Array&lt;String&gt;** | Names by which this image is known. e.g. [\&quot;k8s.gcr.io/hyperkube:v1.0.7\&quot;, \&quot;dockerhub.io/google_containers/hyperkube:v1.0.7\&quot;] | 
**size_bytes** | **Integer** | The size of the image in bytes. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1ContainerImage.new(names: null,
                                 size_bytes: null)
```


