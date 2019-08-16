# Kubernetes::V1beta1CertificateSigningRequestSpec

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**extra** | **Hash&lt;String, Array&lt;String&gt;&gt;** | Extra information about the requesting user. See user.Info interface for details. | [optional] 
**groups** | **Array&lt;String&gt;** | Group information about the requesting user. See user.Info interface for details. | [optional] 
**request** | **String** | Base64-encoded PKCS#10 CSR data | 
**uid** | **String** | UID information about the requesting user. See user.Info interface for details. | [optional] 
**usages** | **Array&lt;String&gt;** | allowedUsages specifies a set of usage contexts the key will be valid for. See: https://tools.ietf.org/html/rfc5280#section-4.2.1.3      https://tools.ietf.org/html/rfc5280#section-4.2.1.12 | [optional] 
**username** | **String** | Information about the requesting user. See user.Info interface for details. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1beta1CertificateSigningRequestSpec.new(extra: null,
                                 groups: null,
                                 request: null,
                                 uid: null,
                                 usages: null,
                                 username: null)
```


