# Zernio::WebhookPayloadMessageMetadataReferredProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **String** | Meta catalog the product belongs to. | [optional] |
| **product_retailer_id** | **String** | Retailer ID (SKU) of the product being asked about. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMessageMetadataReferredProduct.new(
  catalog_id: null,
  product_retailer_id: null
)
```

