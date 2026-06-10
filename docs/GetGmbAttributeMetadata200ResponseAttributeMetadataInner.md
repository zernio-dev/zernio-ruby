# Zernio::GetGmbAttributeMetadata200ResponseAttributeMetadataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **parent** | **String** | Resource name of the attribute (e.g. \&quot;attributes/has_delivery\&quot;). | [optional] |
| **value_type** | **String** | Value type (e.g. BOOL, ENUM, URL, REPEATED_ENUM). | [optional] |
| **display_name** | **String** | Localized human-readable attribute name. | [optional] |
| **group_display_name** | **String** | Display name of the attribute group. | [optional] |
| **repeatable** | **Boolean** | True if multiple values can be set simultaneously. | [optional] |
| **deprecated** | **Boolean** | True if this attribute should no longer be used. | [optional] |
| **value_metadata** | [**Array&lt;GetGmbAttributeMetadata200ResponseAttributeMetadataInnerValueMetadataInner&gt;**](GetGmbAttributeMetadata200ResponseAttributeMetadataInnerValueMetadataInner.md) | Possible enum values (for ENUM / REPEATED_ENUM types). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetGmbAttributeMetadata200ResponseAttributeMetadataInner.new(
  parent: null,
  value_type: null,
  display_name: null,
  group_display_name: null,
  repeatable: null,
  deprecated: null,
  value_metadata: null
)
```

