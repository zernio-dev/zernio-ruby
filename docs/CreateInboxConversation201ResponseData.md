# Late::CreateInboxConversation201ResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **String** | Platform message ID (dm_event_id) | [optional] |
| **conversation_id** | **String** | Platform conversation ID (dm_conversation_id) | [optional] |
| **participant_id** | **String** | Twitter numeric user ID of the recipient | [optional] |
| **participant_name** | **String** | Display name of the recipient | [optional] |
| **participant_username** | **String** | Twitter username of the recipient | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::CreateInboxConversation201ResponseData.new(
  message_id: null,
  conversation_id: null,
  participant_id: null,
  participant_name: null,
  participant_username: null
)
```

