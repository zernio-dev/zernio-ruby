# Zernio::WebhookPayloadMessageMetadataOrderProductItemsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_retailer_id** | **String** | Retailer ID (SKU) of the ordered product. | [optional] |
| **quantity** | **Integer** | Quantity ordered for this line item. | [optional] |
| **item_price** | **Float** | Unit price of the item. | [optional] |
| **currency** | **String** | ISO 4217 currency code (e.g. USD). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMessageMetadataOrderProductItemsInner.new(
  product_retailer_id: null,
  quantity: null,
  item_price: null,
  currency: null
)
```

