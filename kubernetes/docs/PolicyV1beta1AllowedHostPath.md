# Kubernetes::PolicyV1beta1AllowedHostPath

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**path_prefix** | **String** | pathPrefix is the path prefix that the host volume must match. It does not support &#x60;*&#x60;. Trailing slashes are trimmed when validating the path prefix with a host path.  Examples: &#x60;/foo&#x60; would allow &#x60;/foo&#x60;, &#x60;/foo/&#x60; and &#x60;/foo/bar&#x60; &#x60;/foo&#x60; would not allow &#x60;/food&#x60; or &#x60;/etc/foo&#x60; | [optional] 
**read_only** | **Boolean** | when set to true, will allow host volumes matching the pathPrefix only if all volume mounts are readOnly. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::PolicyV1beta1AllowedHostPath.new(path_prefix: null,
                                 read_only: null)
```


