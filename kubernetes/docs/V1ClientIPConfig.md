# Kubernetes::V1ClientIPConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**timeout_seconds** | **Integer** | timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must be &gt;0 &amp;&amp; &lt;&#x3D;86400(for 1 day) if ServiceAffinity &#x3D;&#x3D; \&quot;ClientIP\&quot;. Default value is 10800(for 3 hours). | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1ClientIPConfig.new(timeout_seconds: null)
```


