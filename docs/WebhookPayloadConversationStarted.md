# Zernio::WebhookPayloadConversationStarted

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID |  |
| **event** | **String** |  |  |
| **conversation** | [**WebhookPayloadConversationStartedConversation**](WebhookPayloadConversationStartedConversation.md) |  |  |
| **account** | [**InboxWebhookAccount**](InboxWebhookAccount.md) |  |  |
| **started_at** | **Time** | When the conversation document was created. |  |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadConversationStarted.new(
  id: null,
  event: null,
  conversation: null,
  account: null,
  started_at: null,
  timestamp: null
)
```

