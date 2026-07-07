# Zernio::CreateInboxConversation201ResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **String** | Platform message ID (dm_event_id) | [optional] |
| **conversation_id** | **String** | Platform conversation ID (dm_conversation_id). For WhatsApp, this is Zernio&#39;s internal conversation id (24-character hex) which matches the id returned by the list-conversations endpoint and the conversationId in the message.received and conversation.started webhooks; use it to correlate the created thread with inbound events. | [optional] |
| **participant_id** | **String** | Twitter numeric user ID of the recipient | [optional] |
| **participant_name** | **String** | Display name of the recipient | [optional] |
| **participant_username** | **String** | Twitter username of the recipient | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateInboxConversation201ResponseData.new(
  message_id: null,
  conversation_id: null,
  participant_id: null,
  participant_name: null,
  participant_username: null
)
```

