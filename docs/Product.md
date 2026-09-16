# Zernio::Product

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Platform-native product id (numeric string for Shopify). | [optional] |
| **platform** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **handle** | **String** | URL slug of the product. | [optional] |
| **description_html** | **String** | Product description as HTML. | [optional] |
| **vendor** | **String** |  | [optional] |
| **product_type** | **String** | Free-text product type as set on the store. | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **status** | **String** |  | [optional] |
| **featured_image** | [**ProductImage**](ProductImage.md) |  | [optional] |
| **images** | [**Array&lt;ProductImage&gt;**](ProductImage.md) | First 20 images in the product media, in store order. | [optional] |
| **options** | [**Array&lt;ProductOptionsInner&gt;**](ProductOptionsInner.md) | Option axes (e.g. Size, Color) and their values. | [optional] |
| **variants** | [**Array&lt;ProductVariant&gt;**](ProductVariant.md) | First 100 variants. | [optional] |
| **seo** | [**ProductSeo**](ProductSeo.md) |  | [optional] |
| **total_inventory** | **Integer** |  | [optional] |
| **online_store_url** | **String** | Public storefront URL; null while the product is not published to the online store. | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **published_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::Product.new(
  id: null,
  platform: null,
  title: null,
  handle: null,
  description_html: null,
  vendor: null,
  product_type: null,
  tags: null,
  status: null,
  featured_image: null,
  images: null,
  options: null,
  variants: null,
  seo: null,
  total_inventory: null,
  online_store_url: null,
  created_at: null,
  updated_at: null,
  published_at: null
)
```

