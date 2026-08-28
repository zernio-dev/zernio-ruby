# Zernio::WebhookPayloadPhoneNumberStockAvailable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID |  |
| **event** | **String** |  |  |
| **stock** | [**WebhookPayloadPhoneNumberStockAvailableStock**](WebhookPayloadPhoneNumberStockAvailableStock.md) |  |  |
| **timestamp** | **Time** | UTC time at which Zernio generated this event (set once when the event payload is built, before delivery is queued). Retries and redeliveries keep the original value, so it reflects the event, not the delivery attempt. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadPhoneNumberStockAvailable.new(
  id: null,
  event: null,
  stock: null,
  timestamp: null
)
```

