# Kubernetes::PolicyV1beta1FSGroupStrategyOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ranges** | [**Array&lt;PolicyV1beta1IDRange&gt;**](PolicyV1beta1IDRange.md) | ranges are the allowed ranges of fs groups.  If you would like to force a single fs group then supply a single range with the same start and end. Required for MustRunAs. | [optional] 
**rule** | **String** | rule is the strategy that will dictate what FSGroup is used in the SecurityContext. | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::PolicyV1beta1FSGroupStrategyOptions.new(ranges: null,
                                 rule: null)
```


