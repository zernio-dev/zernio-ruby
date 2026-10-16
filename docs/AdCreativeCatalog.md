# Zernio::AdCreativeCatalog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_set_id** | **String** | The creative&#39;s product_set_id. | [optional] |
| **format** | **String** | object_story_spec.template_data.format_option, from catalogFormat. | [optional] |
| **format_transformation_spec** | [**Array&lt;AdCreativeCatalogFormatTransformationSpecInner&gt;**](AdCreativeCatalogFormatTransformationSpecInner.md) | The format_transformation_spec sent on the creative, as Meta&#39;s raw objects. Present for single_image. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdCreativeCatalog.new(
  product_set_id: null,
  format: null,
  format_transformation_spec: null
)
```

