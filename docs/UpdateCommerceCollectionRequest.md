# Zernio::UpdateCommerceCollectionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **title** | **String** |  | [optional] |
| **description_html** | **String** |  | [optional] |
| **handle** | **String** |  | [optional] |
| **sort_order** | **String** |  | [optional] |
| **seo** | [**CreateCommerceProductRequestSeo**](CreateCommerceProductRequestSeo.md) |  | [optional] |
| **image** | [**CreateCommerceProductRequestImagesInner**](CreateCommerceProductRequestImagesInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateCommerceCollectionRequest.new(
  account_id: null,
  title: null,
  description_html: null,
  handle: null,
  sort_order: null,
  seo: null,
  image: null
)
```

