# Kubernetes::V1SubjectAccessReviewSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**extra** | **Hash&lt;String, Array&lt;String&gt;&gt;** | Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here. | [optional] 
**groups** | **Array&lt;String&gt;** | Groups is the groups you&#39;re testing for. | [optional] 
**non_resource_attributes** | [**V1NonResourceAttributes**](V1NonResourceAttributes.md) | NonResourceAttributes describes information for a non-resource access request | [optional] 
**resource_attributes** | [**V1ResourceAttributes**](V1ResourceAttributes.md) | ResourceAuthorizationAttributes describes information for a resource access request | [optional] 
**uid** | **String** | UID information about the requesting user. | [optional] 
**user** | **String** | User is the user you&#39;re testing for. If you specify \&quot;User\&quot; but not \&quot;Groups\&quot;, then is it interpreted as \&quot;What if User were not a member of any groups | [optional] 


