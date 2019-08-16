# Kubernetes::V1beta1JSONSchemaProps

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ref** | **String** |  | [optional] 
**schema** | **String** |  | [optional] 
**additional_items** | [**Object**](.md) | JSONSchemaPropsOrBool represents JSONSchemaProps or a boolean value. Defaults to true for the boolean property. | [optional] 
**additional_properties** | [**Object**](.md) | JSONSchemaPropsOrBool represents JSONSchemaProps or a boolean value. Defaults to true for the boolean property. | [optional] 
**all_of** | [**Array&lt;V1beta1JSONSchemaProps&gt;**](V1beta1JSONSchemaProps.md) |  | [optional] 
**any_of** | [**Array&lt;V1beta1JSONSchemaProps&gt;**](V1beta1JSONSchemaProps.md) |  | [optional] 
**default** | [**Object**](.md) | JSON represents any valid JSON value. These types are supported: bool, int64, float64, string, []interface{}, map[string]interface{} and nil. | [optional] 
**definitions** | [**Hash&lt;String, V1beta1JSONSchemaProps&gt;**](V1beta1JSONSchemaProps.md) |  | [optional] 
**dependencies** | **Hash&lt;String, Object&gt;** |  | [optional] 
**description** | **String** |  | [optional] 
**enum** | **Array&lt;Object&gt;** |  | [optional] 
**example** | [**Object**](.md) | JSON represents any valid JSON value. These types are supported: bool, int64, float64, string, []interface{}, map[string]interface{} and nil. | [optional] 
**exclusive_maximum** | **Boolean** |  | [optional] 
**exclusive_minimum** | **Boolean** |  | [optional] 
**external_docs** | [**V1beta1ExternalDocumentation**](V1beta1ExternalDocumentation.md) |  | [optional] 
**format** | **String** |  | [optional] 
**id** | **String** |  | [optional] 
**items** | [**Object**](.md) | JSONSchemaPropsOrArray represents a value that can either be a JSONSchemaProps or an array of JSONSchemaProps. Mainly here for serialization purposes. | [optional] 
**max_items** | **Integer** |  | [optional] 
**max_length** | **Integer** |  | [optional] 
**max_properties** | **Integer** |  | [optional] 
**maximum** | **Float** |  | [optional] 
**min_items** | **Integer** |  | [optional] 
**min_length** | **Integer** |  | [optional] 
**min_properties** | **Integer** |  | [optional] 
**minimum** | **Float** |  | [optional] 
**multiple_of** | **Float** |  | [optional] 
**_not** | [**V1beta1JSONSchemaProps**](V1beta1JSONSchemaProps.md) |  | [optional] 
**nullable** | **Boolean** |  | [optional] 
**one_of** | [**Array&lt;V1beta1JSONSchemaProps&gt;**](V1beta1JSONSchemaProps.md) |  | [optional] 
**pattern** | **String** |  | [optional] 
**pattern_properties** | [**Hash&lt;String, V1beta1JSONSchemaProps&gt;**](V1beta1JSONSchemaProps.md) |  | [optional] 
**properties** | [**Hash&lt;String, V1beta1JSONSchemaProps&gt;**](V1beta1JSONSchemaProps.md) |  | [optional] 
**required** | **Array&lt;String&gt;** |  | [optional] 
**title** | **String** |  | [optional] 
**type** | **String** |  | [optional] 
**unique_items** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'Kubernetes'

instance = Kubernetes::V1beta1JSONSchemaProps.new(ref: null,
                                 schema: null,
                                 additional_items: null,
                                 additional_properties: null,
                                 all_of: null,
                                 any_of: null,
                                 default: null,
                                 definitions: null,
                                 dependencies: null,
                                 description: null,
                                 enum: null,
                                 example: null,
                                 exclusive_maximum: null,
                                 exclusive_minimum: null,
                                 external_docs: null,
                                 format: null,
                                 id: null,
                                 items: null,
                                 max_items: null,
                                 max_length: null,
                                 max_properties: null,
                                 maximum: null,
                                 min_items: null,
                                 min_length: null,
                                 min_properties: null,
                                 minimum: null,
                                 multiple_of: null,
                                 _not: null,
                                 nullable: null,
                                 one_of: null,
                                 pattern: null,
                                 pattern_properties: null,
                                 properties: null,
                                 required: null,
                                 title: null,
                                 type: null,
                                 unique_items: null)
```


