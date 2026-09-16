# Zernio::UpdateProductRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  | [optional] |
| **description_html** | **String** | Product description as HTML. | [optional] |
| **handle** | **String** | URL slug of the product. | [optional] |
| **vendor** | **String** |  | [optional] |
| **product_type** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** | Replaces the full tag list. | [optional] |
| **status** | **String** | archived hides the product everywhere; draft keeps it editable but unpublished. | [optional] |
| **seo** | [**UpdateProductRequestSeo**](UpdateProductRequestSeo.md) |  | [optional] |
| **variants** | [**Array&lt;UpdateProductRequestVariantsInner&gt;**](UpdateProductRequestVariantsInner.md) | Price changes per variant. Only the listed variants change. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateProductRequest.new(
  title: null,
  description_html: null,
  handle: null,
  vendor: null,
  product_type: null,
  tags: null,
  status: null,
  seo: null,
  variants: null
)
```

