# Zernio::WebhookPayloadMessageMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Internal message ID |  |
| **conversation_id** | **String** | Internal conversation ID |  |
| **platform** | **String** |  |  |
| **platform_message_id** | **String** | Platform&#39;s message ID |  |
| **direction** | **String** |  |  |
| **text** | **String** | Message text content |  |
| **attachments** | [**Array&lt;WebhookPayloadMessageMessageAttachmentsInner&gt;**](WebhookPayloadMessageMessageAttachmentsInner.md) |  |  |
| **sender** | [**WebhookPayloadMessageMessageSender**](WebhookPayloadMessageMessageSender.md) |  |  |
| **sent_at** | **Time** | When the message was sent, as reported by the platform and passed through unmodified. Full ISO 8601 date-time: Instagram and Facebook carry millisecond precision, while some platforms (for example WhatsApp and Telegram) report whole seconds. Use this field as the chronological ordering key. If two messages share the same value, fetch the conversation messages with sortOrder&#x3D;desc for the deterministic order. |  |
| **is_read** | **Boolean** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMessageMessage.new(
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

