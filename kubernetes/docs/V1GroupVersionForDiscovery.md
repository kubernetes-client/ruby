# Kubernetes::V1GroupVersionForDiscovery

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**group_version** | **String** | groupVersion specifies the API group and version in the form \&quot;group/version\&quot; | 
**version** | **String** | version specifies the version in the form of \&quot;version\&quot;. This is to save the clients the trouble of splitting the GroupVersion. | 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1GroupVersionForDiscovery.new(group_version: null,
                                 version: null)
```


