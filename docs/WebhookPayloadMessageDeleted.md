# Late::WebhookPayloadMessageDeleted

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **event** | **String** |  |  |
| **message** | [**InboxWebhookMessage**](InboxWebhookMessage.md) |  |  |
| **deleted_at** | **Time** |  |  |
| **conversation** | [**InboxWebhookConversation**](InboxWebhookConversation.md) |  |  |
| **account** | [**InboxWebhookAccount**](InboxWebhookAccount.md) |  |  |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'late-sdk'

instance = Late::WebhookPayloadMessageDeleted.new(
  id: null,
  event: null,
  message: null,
  deleted_at: null,
  conversation: null,
  account: null,
  timestamp: null
)
```

