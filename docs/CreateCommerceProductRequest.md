# Zernio::CreateCommerceProductRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **title** | **String** |  |  |
| **description_html** | **String** |  | [optional] |
| **handle** | **String** |  | [optional] |
| **vendor** | **String** |  | [optional] |
| **product_type** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **seo** | [**CreateCommerceProductRequestSeo**](CreateCommerceProductRequestSeo.md) |  | [optional] |
| **status** | **String** |  | [optional][default to &#39;draft&#39;] |
| **images** | [**Array&lt;CreateCommerceProductRequestImagesInner&gt;**](CreateCommerceProductRequestImagesInner.md) |  | [optional] |
| **options** | [**Array&lt;CreateCommerceProductRequestOptionsInner&gt;**](CreateCommerceProductRequestOptionsInner.md) |  | [optional] |
| **variants** | [**Array&lt;CreateCommerceProductRequestVariantsInner&gt;**](CreateCommerceProductRequestVariantsInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCommerceProductRequest.new(
  account_id: null,
  title: null,
  description_html: null,
  handle: null,
  vendor: null,
  product_type: null,
  tags: null,
  seo: null,
  status: null,
  images: null,
  options: null,
  variants: null
)
```

