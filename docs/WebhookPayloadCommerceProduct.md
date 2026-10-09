# Zernio::WebhookPayloadCommerceProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **test** | **Boolean** | Always true when present: only a sample sent by POST /v1/webhooks/test with an event carries it. Real deliveries never do. | [optional] |
| **id** | **String** |  | [optional] |
| **event** | **String** |  | [optional] |
| **timestamp** | **Time** | UTC time at which Zernio generated this event (set once when the event payload is built, before delivery is queued). Retries and redeliveries keep the original value, so it reflects the event, not the delivery attempt. | [optional] |
| **store** | [**WebhookPayloadCommerceProductStore**](WebhookPayloadCommerceProductStore.md) |  | [optional] |
| **resource** | [**WebhookPayloadCommerceProductResource**](WebhookPayloadCommerceProductResource.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCommerceProduct.new(
  test: null,
  id: null,
  event: null,
  timestamp: null,
  store: null,
  resource: null
)
```

