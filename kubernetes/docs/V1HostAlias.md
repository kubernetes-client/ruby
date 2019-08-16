# Kubernetes::V1HostAlias

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostnames** | **Array&lt;String&gt;** | Hostnames for the above IP address. | [optional] 
**ip** | **String** | IP address of the host file entry. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1HostAlias.new(hostnames: null,
                                 ip: null)
```


