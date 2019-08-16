# Kubernetes::ApiregistrationApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_api_group**](ApiregistrationApi.md#get_api_group) | **GET** /apis/apiregistration.k8s.io/ | 



## get_api_group

> V1APIGroup get_api_group



get information of a group

### Example

```ruby
# load the gem
require 'kubernetes'
# setup authorization
Kubernetes.configure do |config|
  # Configure API key authorization: BearerToken
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'Bearer'
end

api_instance = Kubernetes::ApiregistrationApi.new

begin
  result = api_instance.get_api_group
  p result
rescue Kubernetes::ApiError => e
  puts "Exception when calling ApiregistrationApi->get_api_group: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**V1APIGroup**](V1APIGroup.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/yaml, application/vnd.kubernetes.protobuf

