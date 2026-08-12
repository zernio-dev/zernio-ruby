# Zernio::WebhookPayloadMessageDeleted

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **event** | **String** |  |  |
| **message** | [**InboxWebhookMessage**](InboxWebhookMessage.md) |  |  |
| **deleted_at** | **Time** |  |  |
| **conversation** | [**InboxWebhookConversation**](InboxWebhookConversation.md) |  |  |
| **account** | [**InboxWebhookAccount**](InboxWebhookAccount.md) |  |  |
| **timestamp** | **Time** | UTC time at which Zernio generated this event (set once when the event payload is built, before delivery is queued). Retries and redeliveries keep the original value, so it reflects the event, not the delivery attempt. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMessageDeleted.new(
  id: null,
  event: null,
  message: null,
  deleted_at: null,
  conversation: null,
  account: null,
  timestamp: null
)
```

