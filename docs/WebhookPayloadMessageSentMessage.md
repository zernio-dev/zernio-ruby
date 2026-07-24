# Zernio::WebhookPayloadMessageSentMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Internal message ID |  |
| **conversation_id** | **String** | Internal conversation ID |  |
| **platform** | **String** |  |  |
| **platform_message_id** | **String** | Platform&#39;s message ID |  |
| **direction** | **String** |  |  |
| **text** | **String** | Message text content |  |
| **attachments** | [**Array&lt;WebhookPayloadMessageSentMessageAttachmentsInner&gt;**](WebhookPayloadMessageSentMessageAttachmentsInner.md) |  |  |
| **sender** | [**WebhookPayloadMessageSentMessageSender**](WebhookPayloadMessageSentMessageSender.md) |  |  |
| **sent_at** | **Time** |  |  |
| **is_read** | **Boolean** |  |  |
| **source** | **String** | WhatsApp send origin. whatsapp_business_app when sent from the WhatsApp Business phone app on a Coexistence number; cloud_api when sent through Zernio (dashboard, API, or broadcasts). Absent on non-WhatsApp platforms. This is not the inbox metadata.source lineage field. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMessageSentMessage.new(
  id: null,
  conversation_id: null,
  platform: null,
  platform_message_id: null,
  direction: null,
  text: null,
  attachments: null,
  sender: null,
  sent_at: null,
  is_read: null,
  source: null
)
```

