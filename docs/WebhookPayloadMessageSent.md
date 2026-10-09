# Zernio::WebhookPayloadMessageSent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID: the dedupe key, also sent as the X-Zernio-Event-Id header and identical on every retry and redelivery. It identifies the event only, never an account or other resource. |  |
| **test** | **Boolean** | Always true when present: only a sample sent by POST /v1/webhooks/test with an event carries it. Real deliveries never do. | [optional] |
| **event** | **String** |  |  |
| **message** | [**WebhookPayloadMessageSentMessage**](WebhookPayloadMessageSentMessage.md) |  |  |
| **pricing** | [**WhatsAppMessagePricing**](WhatsAppMessagePricing.md) |  | [optional] |
| **billing_conversation** | [**WhatsAppBillingConversation**](WhatsAppBillingConversation.md) |  | [optional] |
| **conversation** | [**InboxWebhookConversation**](InboxWebhookConversation.md) |  |  |
| **account** | [**InboxWebhookAccount**](InboxWebhookAccount.md) |  |  |
| **metadata** | [**WebhookPayloadMessageSentMetadata**](WebhookPayloadMessageSentMetadata.md) |  | [optional] |
| **timestamp** | **Time** | UTC time at which Zernio generated this event (set once when the event payload is built, before delivery is queued). Retries and redeliveries keep the original value, so it reflects the event, not the delivery attempt. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMessageSent.new(
  id: null,
  test: null,
  event: null,
  message: null,
  pricing: null,
  billing_conversation: null,
  conversation: null,
  account: null,
  metadata: null,
  timestamp: null
)
```

