# Zernio::WebhookPayloadCommerceProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **event** | **String** |  | [optional] |
| **timestamp** | **Time** | UTC time at which Zernio generated this event (set once when the event payload is built, before delivery is queued). Retries and redeliveries keep the original value, so it reflects the event, not the delivery attempt. | [optional] |
| **store** | [**WebhookPayloadCommerceProductStore**](WebhookPayloadCommerceProductStore.md) |  | [optional] |
| **resource** | [**WebhookPayloadCommerceProductResource**](WebhookPayloadCommerceProductResource.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCommerceProduct.new(
  id: null,
  event: null,
  timestamp: null,
  store: null,
  resource: null
)
```

