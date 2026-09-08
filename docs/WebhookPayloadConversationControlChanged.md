# Zernio::WebhookPayloadConversationControlChanged

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID |  |
| **event** | **String** |  |  |
| **conversation** | [**WebhookPayloadConversationStartedConversation**](WebhookPayloadConversationStartedConversation.md) |  |  |
| **account** | [**InboxWebhookAccount**](InboxWebhookAccount.md) |  |  |
| **control** | [**WebhookPayloadConversationControlChangedControl**](WebhookPayloadConversationControlChangedControl.md) |  |  |
| **changed_at** | **Time** |  |  |
| **timestamp** | **Time** | UTC time at which Zernio generated this event (set once when the event payload is built, before delivery is queued). Retries and redeliveries keep the original value, so it reflects the event, not the delivery attempt. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadConversationControlChanged.new(
  id: null,
  event: null,
  conversation: null,
  account: null,
  control: null,
  changed_at: null,
  timestamp: null
)
```

