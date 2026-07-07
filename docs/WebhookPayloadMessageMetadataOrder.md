# Zernio::WebhookPayloadMessageMetadataOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **String** | Meta catalog the ordered products belong to. | [optional] |
| **text** | **String** | Optional free-text note the user attached to the cart. | [optional] |
| **product_items** | [**Array&lt;WebhookPayloadMessageMetadataOrderProductItemsInner&gt;**](WebhookPayloadMessageMetadataOrderProductItemsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMessageMetadataOrder.new(
  catalog_id: null,
  text: null,
  product_items: null
)
```

