# Kubernetes::V1beta1CustomResourceDefinitionVersion

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additional_printer_columns** | [**Array&lt;V1beta1CustomResourceColumnDefinition&gt;**](V1beta1CustomResourceColumnDefinition.md) | AdditionalPrinterColumns are additional columns shown e.g. in kubectl next to the name. Defaults to a created-at column. Top-level and per-version columns are mutually exclusive. Per-version columns must not all be set to identical values (top-level columns should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature. NOTE: CRDs created prior to 1.13 populated the top-level additionalPrinterColumns field by default. To apply an update that changes to per-version additionalPrinterColumns, the top-level additionalPrinterColumns field must be explicitly set to null | [optional] 
**name** | **String** | Name is the version name, e.g. “v1”, “v2beta1”, etc. | 
**schema** | [**V1beta1CustomResourceValidation**](V1beta1CustomResourceValidation.md) |  | [optional] 
**served** | **Boolean** | Served is a flag enabling/disabling this version from being served via REST APIs | 
**storage** | **Boolean** | Storage flags the version as storage version. There must be exactly one flagged as storage version. | 
**subresources** | [**V1beta1CustomResourceSubresources**](V1beta1CustomResourceSubresources.md) |  | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1beta1CustomResourceDefinitionVersion.new(additional_printer_columns: null,
                                 name: null,
                                 schema: null,
                                 served: null,
                                 storage: null,
                                 subresources: null)
```


