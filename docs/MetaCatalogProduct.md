# Zernio::MetaCatalogProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Meta product item ID (use in the product endpoints) | [optional] |
| **retailer_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **image_url** | **String** |  | [optional] |
| **additional_image_urls** | **Array&lt;String&gt;** |  | [optional] |
| **price** | **String** | Formatted by Meta, e.g. \&quot;€49.90\&quot; | [optional] |
| **sale_price** | **String** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **availability** | **String** |  | [optional] |
| **condition** | **String** |  | [optional] |
| **brand** | **String** |  | [optional] |
| **category** | **String** |  | [optional] |
| **product_type** | **String** |  | [optional] |
| **gtin** | **String** |  | [optional] |
| **inventory** | **Integer** |  | [optional] |
| **visibility** | **String** |  | [optional] |
| **color** | **String** |  | [optional] |
| **size** | **String** |  | [optional] |
| **gender** | **String** |  | [optional] |
| **material** | **String** |  | [optional] |
| **pattern** | **String** |  | [optional] |
| **custom_labels** | **Array&lt;String&gt;** | custom_label_0 to custom_label_4 | [optional] |
| **review_status** | **String** | Meta&#39;s commerce review status (approved, rejected, pending, ...) | [optional] |
| **review_rejection_reasons** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaCatalogProduct.new(
  id: null,
  retailer_id: null,
  name: null,
  description: null,
  url: null,
  image_url: null,
  additional_image_urls: null,
  price: null,
  sale_price: null,
  currency: null,
  availability: null,
  condition: null,
  brand: null,
  category: null,
  product_type: null,
  gtin: null,
  inventory: null,
  visibility: null,
  color: null,
  size: null,
  gender: null,
  material: null,
  pattern: null,
  custom_labels: null,
  review_status: null,
  review_rejection_reasons: null
)
```

