# Kubernetes::AuthorizationV1beta1Api

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_namespaced_local_subject_access_review**](AuthorizationV1beta1Api.md#create_namespaced_local_subject_access_review) | **POST** /apis/authorization.k8s.io/v1beta1/namespaces/{namespace}/localsubjectaccessreviews | 
[**create_self_subject_access_review**](AuthorizationV1beta1Api.md#create_self_subject_access_review) | **POST** /apis/authorization.k8s.io/v1beta1/selfsubjectaccessreviews | 
[**create_self_subject_rules_review**](AuthorizationV1beta1Api.md#create_self_subject_rules_review) | **POST** /apis/authorization.k8s.io/v1beta1/selfsubjectrulesreviews | 
[**create_subject_access_review**](AuthorizationV1beta1Api.md#create_subject_access_review) | **POST** /apis/authorization.k8s.io/v1beta1/subjectaccessreviews | 
[**get_api_resources**](AuthorizationV1beta1Api.md#get_api_resources) | **GET** /apis/authorization.k8s.io/v1beta1/ | 


# **create_namespaced_local_subject_access_review**
> V1beta1LocalSubjectAccessReview create_namespaced_local_subject_access_review(namespace, body, opts)



create a LocalSubjectAccessReview

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

api_instance = Kubernetes::AuthorizationV1beta1Api.new

namespace = "namespace_example" # String | object name and auth scope, such as for teams and projects

body = Kubernetes::V1beta1LocalSubjectAccessReview.new # V1beta1LocalSubjectAccessReview | 

opts = { 
  pretty: "pretty_example" # String | If 'true', then the output is pretty printed.
}

begin
  result = api_instance.create_namespaced_local_subject_access_review(namespace, body, opts)
  p result
rescue Kubernetes::ApiError => e
  puts "Exception when calling AuthorizationV1beta1Api->create_namespaced_local_subject_access_review: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**| object name and auth scope, such as for teams and projects | 
 **body** | [**V1beta1LocalSubjectAccessReview**](V1beta1LocalSubjectAccessReview.md)|  | 
 **pretty** | **String**| If &#39;true&#39;, then the output is pretty printed. | [optional] 

### Return type

[**V1beta1LocalSubjectAccessReview**](V1beta1LocalSubjectAccessReview.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json, application/yaml, application/vnd.kubernetes.protobuf



# **create_self_subject_access_review**
> V1beta1SelfSubjectAccessReview create_self_subject_access_review(body, opts)



create a SelfSubjectAccessReview

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

api_instance = Kubernetes::AuthorizationV1beta1Api.new

body = Kubernetes::V1beta1SelfSubjectAccessReview.new # V1beta1SelfSubjectAccessReview | 

opts = { 
  pretty: "pretty_example" # String | If 'true', then the output is pretty printed.
}

begin
  result = api_instance.create_self_subject_access_review(body, opts)
  p result
rescue Kubernetes::ApiError => e
  puts "Exception when calling AuthorizationV1beta1Api->create_self_subject_access_review: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1beta1SelfSubjectAccessReview**](V1beta1SelfSubjectAccessReview.md)|  | 
 **pretty** | **String**| If &#39;true&#39;, then the output is pretty printed. | [optional] 

### Return type

[**V1beta1SelfSubjectAccessReview**](V1beta1SelfSubjectAccessReview.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json, application/yaml, application/vnd.kubernetes.protobuf



# **create_self_subject_rules_review**
> V1beta1SelfSubjectRulesReview create_self_subject_rules_review(body, opts)



create a SelfSubjectRulesReview

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

api_instance = Kubernetes::AuthorizationV1beta1Api.new

body = Kubernetes::V1beta1SelfSubjectRulesReview.new # V1beta1SelfSubjectRulesReview | 

opts = { 
  pretty: "pretty_example" # String | If 'true', then the output is pretty printed.
}

begin
  result = api_instance.create_self_subject_rules_review(body, opts)
  p result
rescue Kubernetes::ApiError => e
  puts "Exception when calling AuthorizationV1beta1Api->create_self_subject_rules_review: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1beta1SelfSubjectRulesReview**](V1beta1SelfSubjectRulesReview.md)|  | 
 **pretty** | **String**| If &#39;true&#39;, then the output is pretty printed. | [optional] 

### Return type

[**V1beta1SelfSubjectRulesReview**](V1beta1SelfSubjectRulesReview.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json, application/yaml, application/vnd.kubernetes.protobuf



# **create_subject_access_review**
> V1beta1SubjectAccessReview create_subject_access_review(body, opts)



create a SubjectAccessReview

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

api_instance = Kubernetes::AuthorizationV1beta1Api.new

body = Kubernetes::V1beta1SubjectAccessReview.new # V1beta1SubjectAccessReview | 

opts = { 
  pretty: "pretty_example" # String | If 'true', then the output is pretty printed.
}

begin
  result = api_instance.create_subject_access_review(body, opts)
  p result
rescue Kubernetes::ApiError => e
  puts "Exception when calling AuthorizationV1beta1Api->create_subject_access_review: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**V1beta1SubjectAccessReview**](V1beta1SubjectAccessReview.md)|  | 
 **pretty** | **String**| If &#39;true&#39;, then the output is pretty printed. | [optional] 

### Return type

[**V1beta1SubjectAccessReview**](V1beta1SubjectAccessReview.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json, application/yaml, application/vnd.kubernetes.protobuf



# **get_api_resources**
> V1APIResourceList get_api_resources



get available resources

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

api_instance = Kubernetes::AuthorizationV1beta1Api.new

begin
  result = api_instance.get_api_resources
  p result
rescue Kubernetes::ApiError => e
  puts "Exception when calling AuthorizationV1beta1Api->get_api_resources: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1APIResourceList**](V1APIResourceList.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml, application/vnd.kubernetes.protobuf
 - **Accept**: application/json, application/yaml, application/vnd.kubernetes.protobuf



