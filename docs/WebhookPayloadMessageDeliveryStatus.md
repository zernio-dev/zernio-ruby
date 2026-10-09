# Zernio::WebhookPayloadMessageDeliveryStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **test** | **Boolean** | Always true when present: only a sample sent by POST /v1/webhooks/test with an event carries it. Real deliveries never do. | [optional] |
| **id** | **String** | Stable webhook event ID: the dedupe key, also sent as the X-Zernio-Event-Id header and identical on every retry and redelivery. It identifies the event only, never an account or other resource. |  |
| **event** | **String** |  |  |
| **message** | [**InboxWebhookMessage**](InboxWebhookMessage.md) |  |  |
| **status_at** | **Time** | When the platform reported this status. |  |
| **error** | [**WebhookPayloadMessageDeliveryStatusError**](WebhookPayloadMessageDeliveryStatusError.md) |  | [optional] |
| **pricing** | [**WhatsAppMessagePricing**](WhatsAppMessagePricing.md) |  | [optional] |
| **billing_conversation** | [**WhatsAppBillingConversation**](WhatsAppBillingConversation.md) |  | [optional] |
| **conversation** | [**InboxWebhookConversation**](InboxWebhookConversation.md) |  |  |
| **account** | [**InboxWebhookAccount**](InboxWebhookAccount.md) |  |  |
| **timestamp** | **Time** | UTC time at which Zernio generated this event (set once when the event payload is built, before delivery is queued). Retries and redeliveries keep the original value, so it reflects the event, not the delivery attempt. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMessageDeliveryStatus.new(
  test: null,
  id: null,
  event: null,
  message: null,
  status_at: null,
  error: null,
  pricing: null,
  billing_conversation: null,
  conversation: null,
  account: null,
  timestamp: null
)
```

