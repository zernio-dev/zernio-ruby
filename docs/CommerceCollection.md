# Zernio::CommerceCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Platform-native collection id. | [optional] |
| **account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **handle** | **String** |  | [optional] |
| **description_html** | **String** |  | [optional] |
| **image** | [**CommerceImage**](CommerceImage.md) |  | [optional] |
| **sort_order** | **String** |  | [optional] |
| **product_count** | **Integer** | Updates a few seconds after a membership change. | [optional] |
| **seo** | [**ProductSeo**](ProductSeo.md) |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **platform_data** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceCollection.new(
  id: null,
  account_id: null,
  platform: null,
  title: null,
  handle: null,
  description_html: null,
  image: null,
  sort_order: null,
  product_count: null,
  seo: null,
  updated_at: null,
  platform_data: null
)
```

