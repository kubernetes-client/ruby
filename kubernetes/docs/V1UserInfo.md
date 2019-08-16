# Kubernetes::V1UserInfo

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**extra** | **Hash&lt;String, Array&lt;String&gt;&gt;** | Any additional information provided by the authenticator. | [optional] 
**groups** | **Array&lt;String&gt;** | The names of groups this user is a part of. | [optional] 
**uid** | **String** | A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs. | [optional] 
**username** | **String** | The name that uniquely identifies this user among all active users. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1UserInfo.new(extra: null,
                                 groups: null,
                                 uid: null,
                                 username: null)
```


