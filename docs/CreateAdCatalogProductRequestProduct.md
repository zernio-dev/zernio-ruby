# Zernio::CreateAdCatalogProductRequestProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **retailer_id** | **String** | Your SKU; unique inside the catalog |  |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **url** | **String** | Product page |  |
| **image_url** | **String** |  |  |
| **additional_image_urls** | **Array&lt;String&gt;** |  | [optional] |
| **price** | **Float** | Major units, e.g. 12.99 |  |
| **currency** | **String** | ISO 4217, e.g. EUR |  |
| **sale_price** | **Float** |  | [optional] |
| **sale_price_start_date** | **String** | ISO 8601 | [optional] |
| **sale_price_end_date** | **String** | ISO 8601 | [optional] |
| **availability** | **String** |  | [optional] |
| **condition** | **String** |  | [optional] |
| **brand** | **String** |  | [optional] |
| **category** | **String** |  | [optional] |
| **google_product_category** | **String** |  | [optional] |
| **product_type** | **String** |  | [optional] |
| **gtin** | **String** |  | [optional] |
| **mpn** | **String** |  | [optional] |
| **inventory** | **Integer** |  | [optional] |
| **visibility** | **String** |  | [optional] |
| **color** | **String** |  | [optional] |
| **size** | **String** |  | [optional] |
| **gender** | **String** |  | [optional] |
| **material** | **String** |  | [optional] |
| **pattern** | **String** |  | [optional] |
| **custom_label0** | **String** |  | [optional] |
| **custom_label1** | **String** |  | [optional] |
| **custom_label2** | **String** |  | [optional] |
| **custom_label3** | **String** |  | [optional] |
| **custom_label4** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateAdCatalogProductRequestProduct.new(
  retailer_id: null,
  name: null,
  description: null,
  url: null,
  image_url: null,
  additional_image_urls: null,
  price: null,
  currency: null,
  sale_price: null,
  sale_price_start_date: null,
  sale_price_end_date: null,
  availability: null,
  condition: null,
  brand: null,
  category: null,
  google_product_category: null,
  product_type: null,
  gtin: null,
  mpn: null,
  inventory: null,
  visibility: null,
  color: null,
  size: null,
  gender: null,
  material: null,
  pattern: null,
  custom_label0: null,
  custom_label1: null,
  custom_label2: null,
  custom_label3: null,
  custom_label4: null
)
```

