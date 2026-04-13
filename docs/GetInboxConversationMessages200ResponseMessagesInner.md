# Late::GetInboxConversationMessages200ResponseMessagesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **conversation_id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |
| **sender_id** | **String** |  | [optional] |
| **sender_name** | **String** |  | [optional] |
| **sender_verified_type** | **String** | X/Twitter verified badge type. Only present for Twitter/X messages. | [optional] |
| **direction** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **attachments** | [**Array&lt;GetInboxConversationMessages200ResponseMessagesInnerAttachmentsInner&gt;**](GetInboxConversationMessages200ResponseMessagesInnerAttachmentsInner.md) |  | [optional] |
| **subject** | **String** | Reddit message subject | [optional] |
| **story_reply** | **Boolean** | Instagram story reply | [optional] |
| **is_story_mention** | **Boolean** | Instagram story mention | [optional] |
| **is_edited** | **Boolean** | True if the sender has edited this message at least once. | [optional] |
| **edited_at** | **Time** | When the most recent edit happened. | [optional] |
| **edit_count** | **Integer** | Total number of edits applied. | [optional] |
| **edit_history** | [**Array&lt;GetInboxConversationMessages200ResponseMessagesInnerEditHistoryInner&gt;**](GetInboxConversationMessages200ResponseMessagesInnerEditHistoryInner.md) | Every prior version of the message, oldest first. | [optional] |
| **is_deleted** | **Boolean** | True if the sender has deleted (unsent) this message. The original &#x60;message&#x60; and &#x60;attachments&#x60; fields remain populated. | [optional] |
| **deleted_at** | **Time** |  | [optional] |
| **delivery_status** | **String** | Lifecycle status for outgoing messages. Not all platforms emit every state (see webhook support matrix). | [optional] |
| **delivered_at** | **Time** |  | [optional] |
| **read_at** | **Time** |  | [optional] |
| **sent_at** | **Time** | Original send time for outgoing messages (used for Messenger watermark queries). | [optional] |
| **delivery_error** | [**GetInboxConversationMessages200ResponseMessagesInnerDeliveryError**](GetInboxConversationMessages200ResponseMessagesInnerDeliveryError.md) |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::GetInboxConversationMessages200ResponseMessagesInner.new(
  id: null,
  conversation_id: null,
  account_id: null,
  platform: null,
  message: null,
  sender_id: null,
  sender_name: null,
  sender_verified_type: null,
  direction: null,
  created_at: null,
  attachments: null,
  subject: null,
  story_reply: null,
  is_story_mention: null,
  is_edited: null,
  edited_at: null,
  edit_count: null,
  edit_history: null,
  is_deleted: null,
  deleted_at: null,
  delivery_status: null,
  delivered_at: null,
  read_at: null,
  sent_at: null,
  delivery_error: null
)
```

