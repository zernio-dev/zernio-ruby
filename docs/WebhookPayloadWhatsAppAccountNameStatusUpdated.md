# Zernio::WebhookPayloadWhatsAppAccountNameStatusUpdated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID: the dedupe key, also sent as the X-Zernio-Event-Id header and identical on every retry and redelivery. It identifies the event only, never an account or other resource. |  |
| **event** | **String** |  |  |
| **account** | [**WebhookPayloadWhatsAppTemplateStatusUpdatedAccount**](WebhookPayloadWhatsAppTemplateStatusUpdatedAccount.md) |  |  |
| **name** | [**WebhookPayloadWhatsAppAccountNameStatusUpdatedName**](WebhookPayloadWhatsAppAccountNameStatusUpdatedName.md) |  |  |
| **timestamp** | **Time** | UTC time at which Zernio generated this event (set once when the event payload is built, before delivery is queued). Retries and redeliveries keep the original value, so it reflects the event, not the delivery attempt. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadWhatsAppAccountNameStatusUpdated.new(
  id: null,
  event: null,
  account: null,
  name: null,
  timestamp: null
)
```

