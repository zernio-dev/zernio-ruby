# Zernio::WebhookPayloadMessageEdited

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **event** | **String** |  |  |
| **message** | [**InboxWebhookMessage**](InboxWebhookMessage.md) |  |  |
| **edit_history** | [**Array&lt;WebhookPayloadMessageEditedEditHistoryInner&gt;**](WebhookPayloadMessageEditedEditHistoryInner.md) | Prior versions of the message, oldest first. |  |
| **edit_count** | **Integer** | Total number of edits applied to this message. |  |
| **edited_at** | **Time** | When the most recent edit happened. |  |
| **conversation** | [**InboxWebhookConversation**](InboxWebhookConversation.md) |  |  |
| **account** | [**InboxWebhookAccount**](InboxWebhookAccount.md) |  |  |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMessageEdited.new(
  id: null,
  event: null,
  message: null,
  edit_history: null,
  edit_count: null,
  edited_at: null,
  conversation: null,
  account: null,
  timestamp: null
)
```

