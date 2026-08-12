# Zernio::WebhookPayloadLead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID |  |
| **event** | **String** |  |  |
| **lead** | [**WebhookPayloadLeadLead**](WebhookPayloadLeadLead.md) |  |  |
| **account** | [**WebhookPayloadLeadAccount**](WebhookPayloadLeadAccount.md) |  |  |
| **timestamp** | **Time** | UTC time at which Zernio generated this event (set once when the event payload is built, before delivery is queued). Retries and redeliveries keep the original value, so it reflects the event, not the delivery attempt. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadLead.new(
  id: null,
  event: null,
  lead: null,
  account: null,
  timestamp: null
)
```

