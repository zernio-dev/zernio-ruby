# Zernio::SearchInboxConversations200ResponseDataInnerConversation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Conversation ID, usable with the conversation messages endpoints | [optional] |
| **platform** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **participant_name** | **String** |  | [optional] |
| **participant_username** | **String** |  | [optional] |
| **participant_picture** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **last_message_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SearchInboxConversations200ResponseDataInnerConversation.new(
  id: null,
  platform: null,
  account_id: null,
  participant_name: null,
  participant_username: null,
  participant_picture: null,
  status: null,
  last_message_at: null
)
```

