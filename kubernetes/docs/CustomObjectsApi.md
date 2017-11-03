# Kubernetes::CustomObjectsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_cluster_custom_object**](CustomObjectsApi.md#create_cluster_custom_object) | **POST** /apis/{group}/{version}/{plural} | 
[**create_namespaced_custom_object**](CustomObjectsApi.md#create_namespaced_custom_object) | **POST** /apis/{group}/{version}/namespaces/{namespace}/{plural} | 
[**delete_cluster_custom_object**](CustomObjectsApi.md#delete_cluster_custom_object) | **DELETE** /apis/{group}/{version}/{plural}/{name} | 
[**delete_namespaced_custom_object**](CustomObjectsApi.md#delete_namespaced_custom_object) | **DELETE** /apis/{group}/{version}/namespaces/{namespace}/{plural}/{name} | 
[**get_cluster_custom_object**](CustomObjectsApi.md#get_cluster_custom_object) | **GET** /apis/{group}/{version}/{plural}/{name} | 
[**get_namespaced_custom_object**](CustomObjectsApi.md#get_namespaced_custom_object) | **GET** /apis/{group}/{version}/namespaces/{namespace}/{plural}/{name} | 
[**list_cluster_custom_object**](CustomObjectsApi.md#list_cluster_custom_object) | **GET** /apis/{group}/{version}/{plural} | 
[**list_namespaced_custom_object**](CustomObjectsApi.md#list_namespaced_custom_object) | **GET** /apis/{group}/{version}/namespaces/{namespace}/{plural} | 
[**replace_cluster_custom_object**](CustomObjectsApi.md#replace_cluster_custom_object) | **PUT** /apis/{group}/{version}/{plural}/{name} | 
[**replace_namespaced_custom_object**](CustomObjectsApi.md#replace_namespaced_custom_object) | **PUT** /apis/{group}/{version}/namespaces/{namespace}/{plural}/{name} | 


# **create_cluster_custom_object**
> Object create_cluster_custom_object(group, version, plural, body, opts)



Creates a cluster scoped Custom object

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

api_instance = Kubernetes::CustomObjectsApi.new

group = "group_example" # String | The custom resource's group name

version = "version_example" # String | The custom resource's version

plural = "plural_example" # String | The custom resource's plural name. For TPRs this would be lowercase plural kind.

body = nil # Object | The JSON schema of the Resource to create.

opts = { 
  pretty: "pretty_example" # String | If 'true', then the output is pretty printed.
}

begin
  result = api_instance.create_cluster_custom_object(group, version, plural, body, opts)
  p result
rescue Kubernetes::ApiError => e
  puts "Exception when calling CustomObjectsApi->create_cluster_custom_object: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group** | **String**| The custom resource&#39;s group name | 
 **version** | **String**| The custom resource&#39;s version | 
 **plural** | **String**| The custom resource&#39;s plural name. For TPRs this would be lowercase plural kind. | 
 **body** | **Object**| The JSON schema of the Resource to create. | 
 **pretty** | **String**| If &#39;true&#39;, then the output is pretty printed. | [optional] 

### Return type

**Object**

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_namespaced_custom_object**
> Object create_namespaced_custom_object(group, version, namespace, plural, body, opts)



Creates a namespace scoped Custom object

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

api_instance = Kubernetes::CustomObjectsApi.new

group = "group_example" # String | The custom resource's group name

version = "version_example" # String | The custom resource's version

namespace = "namespace_example" # String | The custom resource's namespace

plural = "plural_example" # String | The custom resource's plural name. For TPRs this would be lowercase plural kind.

body = nil # Object | The JSON schema of the Resource to create.

opts = { 
  pretty: "pretty_example" # String | If 'true', then the output is pretty printed.
}

begin
  result = api_instance.create_namespaced_custom_object(group, version, namespace, plural, body, opts)
  p result
rescue Kubernetes::ApiError => e
  puts "Exception when calling CustomObjectsApi->create_namespaced_custom_object: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group** | **String**| The custom resource&#39;s group name | 
 **version** | **String**| The custom resource&#39;s version | 
 **namespace** | **String**| The custom resource&#39;s namespace | 
 **plural** | **String**| The custom resource&#39;s plural name. For TPRs this would be lowercase plural kind. | 
 **body** | **Object**| The JSON schema of the Resource to create. | 
 **pretty** | **String**| If &#39;true&#39;, then the output is pretty printed. | [optional] 

### Return type

**Object**

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_cluster_custom_object**
> Object delete_cluster_custom_object(group, version, plural, name, body, opts)



Deletes the specified cluster scoped custom object

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

api_instance = Kubernetes::CustomObjectsApi.new

group = "group_example" # String | the custom resource's group

version = "version_example" # String | the custom resource's version

plural = "plural_example" # String | the custom object's plural name. For TPRs this would be lowercase plural kind.

name = "name_example" # String | the custom object's name

body = Kubernetes::V1DeleteOptions.new # V1DeleteOptions | 

opts = { 
  grace_period_seconds: 56, # Integer | The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
  orphan_dependents: true, # BOOLEAN | Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
  propagation_policy: "propagation_policy_example" # String | Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy.
}

begin
  result = api_instance.delete_cluster_custom_object(group, version, plural, name, body, opts)
  p result
rescue Kubernetes::ApiError => e
  puts "Exception when calling CustomObjectsApi->delete_cluster_custom_object: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group** | **String**| the custom resource&#39;s group | 
 **version** | **String**| the custom resource&#39;s version | 
 **plural** | **String**| the custom object&#39;s plural name. For TPRs this would be lowercase plural kind. | 
 **name** | **String**| the custom object&#39;s name | 
 **body** | [**V1DeleteOptions**](V1DeleteOptions.md)|  | 
 **grace_period_seconds** | **Integer**| The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately. | [optional] 
 **orphan_dependents** | **BOOLEAN**| Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \&quot;orphan\&quot; finalizer will be added to/removed from the object&#39;s finalizers list. Either this field or PropagationPolicy may be set, but not both. | [optional] 
 **propagation_policy** | **String**| Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. | [optional] 

### Return type

**Object**

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json



# **delete_namespaced_custom_object**
> Object delete_namespaced_custom_object(group, version, namespace, plural, name, body, opts)



Deletes the specified namespace scoped custom object

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

api_instance = Kubernetes::CustomObjectsApi.new

group = "group_example" # String | the custom resource's group

version = "version_example" # String | the custom resource's version

namespace = "namespace_example" # String | The custom resource's namespace

plural = "plural_example" # String | the custom resource's plural name. For TPRs this would be lowercase plural kind.

name = "name_example" # String | the custom object's name

body = Kubernetes::V1DeleteOptions.new # V1DeleteOptions | 

opts = { 
  grace_period_seconds: 56, # Integer | The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
  orphan_dependents: true, # BOOLEAN | Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
  propagation_policy: "propagation_policy_example" # String | Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy.
}

begin
  result = api_instance.delete_namespaced_custom_object(group, version, namespace, plural, name, body, opts)
  p result
rescue Kubernetes::ApiError => e
  puts "Exception when calling CustomObjectsApi->delete_namespaced_custom_object: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group** | **String**| the custom resource&#39;s group | 
 **version** | **String**| the custom resource&#39;s version | 
 **namespace** | **String**| The custom resource&#39;s namespace | 
 **plural** | **String**| the custom resource&#39;s plural name. For TPRs this would be lowercase plural kind. | 
 **name** | **String**| the custom object&#39;s name | 
 **body** | [**V1DeleteOptions**](V1DeleteOptions.md)|  | 
 **grace_period_seconds** | **Integer**| The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately. | [optional] 
 **orphan_dependents** | **BOOLEAN**| Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \&quot;orphan\&quot; finalizer will be added to/removed from the object&#39;s finalizers list. Either this field or PropagationPolicy may be set, but not both. | [optional] 
 **propagation_policy** | **String**| Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. | [optional] 

### Return type

**Object**

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json



# **get_cluster_custom_object**
> Object get_cluster_custom_object(group, version, plural, name, )



Returns a cluster scoped custom object

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

api_instance = Kubernetes::CustomObjectsApi.new

group = "group_example" # String | the custom resource's group

version = "version_example" # String | the custom resource's version

plural = "plural_example" # String | the custom object's plural name. For TPRs this would be lowercase plural kind.

name = "name_example" # String | the custom object's name


begin
  result = api_instance.get_cluster_custom_object(group, version, plural, name, )
  p result
rescue Kubernetes::ApiError => e
  puts "Exception when calling CustomObjectsApi->get_cluster_custom_object: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group** | **String**| the custom resource&#39;s group | 
 **version** | **String**| the custom resource&#39;s version | 
 **plural** | **String**| the custom object&#39;s plural name. For TPRs this would be lowercase plural kind. | 
 **name** | **String**| the custom object&#39;s name | 

### Return type

**Object**

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json



# **get_namespaced_custom_object**
> Object get_namespaced_custom_object(group, version, namespace, plural, name, )



Returns a namespace scoped custom object

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

api_instance = Kubernetes::CustomObjectsApi.new

group = "group_example" # String | the custom resource's group

version = "version_example" # String | the custom resource's version

namespace = "namespace_example" # String | The custom resource's namespace

plural = "plural_example" # String | the custom resource's plural name. For TPRs this would be lowercase plural kind.

name = "name_example" # String | the custom object's name


begin
  result = api_instance.get_namespaced_custom_object(group, version, namespace, plural, name, )
  p result
rescue Kubernetes::ApiError => e
  puts "Exception when calling CustomObjectsApi->get_namespaced_custom_object: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group** | **String**| the custom resource&#39;s group | 
 **version** | **String**| the custom resource&#39;s version | 
 **namespace** | **String**| The custom resource&#39;s namespace | 
 **plural** | **String**| the custom resource&#39;s plural name. For TPRs this would be lowercase plural kind. | 
 **name** | **String**| the custom object&#39;s name | 

### Return type

**Object**

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json



# **list_cluster_custom_object**
> Object list_cluster_custom_object(group, version, plural, , opts)



list or watch cluster scoped custom objects

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

api_instance = Kubernetes::CustomObjectsApi.new

group = "group_example" # String | The custom resource's group name

version = "version_example" # String | The custom resource's version

plural = "plural_example" # String | The custom resource's plural name. For TPRs this would be lowercase plural kind.

opts = { 
  pretty: "pretty_example" # String | If 'true', then the output is pretty printed.
  label_selector: "label_selector_example", # String | A selector to restrict the list of returned objects by their labels. Defaults to everything.
  resource_version: "resource_version_example", # String | When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. When specified for list: - if unset, then the result is returned from remote storage based on quorum-read flag; - if it's 0, then we simply return what we currently have in cache, no guarantee; - if set to non zero, then the result is at least as fresh as given rv.
  watch: true # BOOLEAN | Watch for changes to the described resources and return them as a stream of add, update, and remove notifications.
}

begin
  result = api_instance.list_cluster_custom_object(group, version, plural, , opts)
  p result
rescue Kubernetes::ApiError => e
  puts "Exception when calling CustomObjectsApi->list_cluster_custom_object: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group** | **String**| The custom resource&#39;s group name | 
 **version** | **String**| The custom resource&#39;s version | 
 **plural** | **String**| The custom resource&#39;s plural name. For TPRs this would be lowercase plural kind. | 
 **pretty** | **String**| If &#39;true&#39;, then the output is pretty printed. | [optional] 
 **label_selector** | **String**| A selector to restrict the list of returned objects by their labels. Defaults to everything. | [optional] 
 **resource_version** | **String**| When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. When specified for list: - if unset, then the result is returned from remote storage based on quorum-read flag; - if it&#39;s 0, then we simply return what we currently have in cache, no guarantee; - if set to non zero, then the result is at least as fresh as given rv. | [optional] 
 **watch** | **BOOLEAN**| Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. | [optional] 

### Return type

**Object**

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json, application/json;stream=watch



# **list_namespaced_custom_object**
> Object list_namespaced_custom_object(group, version, namespace, plural, , opts)



list or watch namespace scoped custom objects

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

api_instance = Kubernetes::CustomObjectsApi.new

group = "group_example" # String | The custom resource's group name

version = "version_example" # String | The custom resource's version

namespace = "namespace_example" # String | The custom resource's namespace

plural = "plural_example" # String | The custom resource's plural name. For TPRs this would be lowercase plural kind.

opts = { 
  pretty: "pretty_example" # String | If 'true', then the output is pretty printed.
  label_selector: "label_selector_example", # String | A selector to restrict the list of returned objects by their labels. Defaults to everything.
  resource_version: "resource_version_example", # String | When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. When specified for list: - if unset, then the result is returned from remote storage based on quorum-read flag; - if it's 0, then we simply return what we currently have in cache, no guarantee; - if set to non zero, then the result is at least as fresh as given rv.
  watch: true # BOOLEAN | Watch for changes to the described resources and return them as a stream of add, update, and remove notifications.
}

begin
  result = api_instance.list_namespaced_custom_object(group, version, namespace, plural, , opts)
  p result
rescue Kubernetes::ApiError => e
  puts "Exception when calling CustomObjectsApi->list_namespaced_custom_object: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group** | **String**| The custom resource&#39;s group name | 
 **version** | **String**| The custom resource&#39;s version | 
 **namespace** | **String**| The custom resource&#39;s namespace | 
 **plural** | **String**| The custom resource&#39;s plural name. For TPRs this would be lowercase plural kind. | 
 **pretty** | **String**| If &#39;true&#39;, then the output is pretty printed. | [optional] 
 **label_selector** | **String**| A selector to restrict the list of returned objects by their labels. Defaults to everything. | [optional] 
 **resource_version** | **String**| When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. When specified for list: - if unset, then the result is returned from remote storage based on quorum-read flag; - if it&#39;s 0, then we simply return what we currently have in cache, no guarantee; - if set to non zero, then the result is at least as fresh as given rv. | [optional] 
 **watch** | **BOOLEAN**| Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. | [optional] 

### Return type

**Object**

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json, application/json;stream=watch



# **replace_cluster_custom_object**
> Object replace_cluster_custom_object(group, version, plural, name, body)



replace the specified cluster scoped custom object

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

api_instance = Kubernetes::CustomObjectsApi.new

group = "group_example" # String | the custom resource's group

version = "version_example" # String | the custom resource's version

plural = "plural_example" # String | the custom object's plural name. For TPRs this would be lowercase plural kind.

name = "name_example" # String | the custom object's name

body = nil # Object | The JSON schema of the Resource to replace.


begin
  result = api_instance.replace_cluster_custom_object(group, version, plural, name, body)
  p result
rescue Kubernetes::ApiError => e
  puts "Exception when calling CustomObjectsApi->replace_cluster_custom_object: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group** | **String**| the custom resource&#39;s group | 
 **version** | **String**| the custom resource&#39;s version | 
 **plural** | **String**| the custom object&#39;s plural name. For TPRs this would be lowercase plural kind. | 
 **name** | **String**| the custom object&#39;s name | 
 **body** | **Object**| The JSON schema of the Resource to replace. | 

### Return type

**Object**

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json



# **replace_namespaced_custom_object**
> Object replace_namespaced_custom_object(group, version, namespace, plural, name, body)



replace the specified namespace scoped custom object

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

api_instance = Kubernetes::CustomObjectsApi.new

group = "group_example" # String | the custom resource's group

version = "version_example" # String | the custom resource's version

namespace = "namespace_example" # String | The custom resource's namespace

plural = "plural_example" # String | the custom resource's plural name. For TPRs this would be lowercase plural kind.

name = "name_example" # String | the custom object's name

body = nil # Object | The JSON schema of the Resource to replace.


begin
  result = api_instance.replace_namespaced_custom_object(group, version, namespace, plural, name, body)
  p result
rescue Kubernetes::ApiError => e
  puts "Exception when calling CustomObjectsApi->replace_namespaced_custom_object: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group** | **String**| the custom resource&#39;s group | 
 **version** | **String**| the custom resource&#39;s version | 
 **namespace** | **String**| The custom resource&#39;s namespace | 
 **plural** | **String**| the custom resource&#39;s plural name. For TPRs this would be lowercase plural kind. | 
 **name** | **String**| the custom object&#39;s name | 
 **body** | **Object**| The JSON schema of the Resource to replace. | 

### Return type

**Object**

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json



