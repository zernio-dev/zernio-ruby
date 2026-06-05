# Zernio::ListInboxConversationAnalytics200ResponseItemsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The platformConversationId (the same identity used by metadata.conversationId) | [optional] |
| **mongo_id** | **String** | The Conversation document _id, when a matching doc exists | [optional] |
| **account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **participant_name** | **String** |  | [optional] |
| **participant_username** | **String** |  | [optional] |
| **participant_picture** | **String** |  | [optional] |
| **last_message** | **String** | Cached preview from the Conversation doc | [optional] |
| **total_messages** | **Integer** |  | [optional] |
| **received** | **Integer** |  | [optional] |
| **sent** | **Integer** |  | [optional] |
| **read** | **Integer** |  | [optional] |
| **failed** | **Integer** |  | [optional] |
| **first_message_at** | **Time** |  | [optional] |
| **last_message_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListInboxConversationAnalytics200ResponseItemsInner.new(
  conversation_id: null,
  mongo_id: null,
  account_id: null,
  platform: null,
  participant_name: null,
  participant_username: null,
  participant_picture: null,
  last_message: null,
  total_messages: null,
  received: null,
  sent: null,
  read: null,
  failed: null,
  first_message_at: null,
  last_message_at: null
)
```

