# Zernio::UpdateCommerceProductRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **title** | **String** |  | [optional] |
| **description_html** | **String** |  | [optional] |
| **handle** | **String** |  | [optional] |
| **vendor** | **String** |  | [optional] |
| **product_type** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **seo** | [**CreateCommerceProductRequestSeo**](CreateCommerceProductRequestSeo.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateCommerceProductRequest.new(
  account_id: null,
  title: null,
  description_html: null,
  handle: null,
  vendor: null,
  product_type: null,
  tags: null,
  seo: null
)
```

