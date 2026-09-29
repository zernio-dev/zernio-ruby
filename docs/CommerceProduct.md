# Zernio::CommerceProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Platform-native product id. | [optional] |
| **account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **description_html** | **String** |  | [optional] |
| **handle** | **String** | URL slug of the product. | [optional] |
| **vendor** | **String** |  | [optional] |
| **product_type** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **status** | [**CommerceProductStatus**](CommerceProductStatus.md) |  | [optional] |
| **platform_status** | **String** | The raw status on the platform, e.g. ACTIVE on Shopify. | [optional] |
| **featured_image** | [**CommerceImage**](CommerceImage.md) |  | [optional] |
| **images** | [**Array&lt;CommerceImage&gt;**](CommerceImage.md) | First 20 images, in store order. | [optional] |
| **options** | [**Array&lt;ProductOptionsInner&gt;**](ProductOptionsInner.md) | Option axes (e.g. Size, Color) and their values. | [optional] |
| **variants** | [**Array&lt;CommerceVariant&gt;**](CommerceVariant.md) | First 100 variants. | [optional] |
| **total_inventory** | **Integer** |  | [optional] |
| **url** | **String** | Public storefront URL; null while the product is not published. | [optional] |
| **seo** | [**ProductSeo**](ProductSeo.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **published_at** | **Time** |  | [optional] |
| **platform_data** | **Hash&lt;String, Object&gt;** | Platform-only fields. Null when the platform has none. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceProduct.new(
  id: null,
  account_id: null,
  platform: null,
  title: null,
  description_html: null,
  handle: null,
  vendor: null,
  product_type: null,
  tags: null,
  status: null,
  platform_status: null,
  featured_image: null,
  images: null,
  options: null,
  variants: null,
  total_inventory: null,
  url: null,
  seo: null,
  created_at: null,
  updated_at: null,
  published_at: null,
  platform_data: null
)
```

