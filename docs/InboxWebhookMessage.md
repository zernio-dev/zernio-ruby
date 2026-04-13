# Late::InboxWebhookMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Internal message ID |  |
| **conversation_id** | **String** | Internal conversation ID |  |
| **platform** | **String** |  |  |
| **platform_message_id** | **String** | Platform&#39;s message ID |  |
| **direction** | **String** |  |  |
| **text** | **String** | Message text content (retained on deleted messages for API consumers; Zernio dashboard UI hides this) |  |
| **attachments** | [**Array&lt;InboxWebhookMessageAttachmentsInner&gt;**](InboxWebhookMessageAttachmentsInner.md) |  |  |
| **sender** | [**InboxWebhookMessageSender**](InboxWebhookMessageSender.md) |  |  |
| **sent_at** | **Time** |  |  |
| **is_read** | **Boolean** |  |  |

## Example

```ruby
require 'late-sdk'

instance = Late::InboxWebhookMessage.new(
  id: null,
  conversation_id: null,
  platform: null,
  platform_message_id: null,
  direction: null,
  text: null,
  attachments: null,
  sender: null,
  sent_at: null,
  is_read: null
)
```

