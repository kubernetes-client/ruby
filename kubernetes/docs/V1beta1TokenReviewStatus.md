# Kubernetes::V1beta1TokenReviewStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**audiences** | **Array&lt;String&gt;** | Audiences are audience identifiers chosen by the authenticator that are compatible with both the TokenReview and token. An identifier is any identifier in the intersection of the TokenReviewSpec audiences and the token&#39;s audiences. A client of the TokenReview API that sets the spec.audiences field should validate that a compatible audience identifier is returned in the status.audiences field to ensure that the TokenReview server is audience aware. If a TokenReview returns an empty status.audience field where status.authenticated is \&quot;true\&quot;, the token is valid against the audience of the Kubernetes API server. | [optional] 
**authenticated** | **Boolean** | Authenticated indicates that the token was associated with a known user. | [optional] 
**error** | **String** | Error indicates that the token couldn&#39;t be checked | [optional] 
**user** | [**V1beta1UserInfo**](V1beta1UserInfo.md) |  | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1beta1TokenReviewStatus.new(audiences: null,
                                 authenticated: null,
                                 error: null,
                                 user: null)
```


