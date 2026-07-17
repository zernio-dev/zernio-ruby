# Zernio::GetInboxConversationMessages200ResponseMessagesInner

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
| **edit_history** | [**Array&lt;InboxMessageEditHistoryEntry&gt;**](InboxMessageEditHistoryEntry.md) | Every prior version of the message, oldest first. | [optional] |
| **is_deleted** | **Boolean** | True if the sender has deleted (unsent) this message. The original message and attachments fields remain populated. | [optional] |
| **deleted_at** | **Time** |  | [optional] |
| **delivery_status** | **String** | Lifecycle status for outgoing messages. Not all platforms emit every state (see webhook support matrix). | [optional] |
| **delivered_at** | **Time** |  | [optional] |
| **read_at** | **Time** |  | [optional] |
| **sent_at** | **Time** | Original send time for outgoing messages (used for Messenger watermark queries). | [optional] |
| **delivery_error** | [**GetInboxConversationMessages200ResponseMessagesInnerDeliveryError**](GetInboxConversationMessages200ResponseMessagesInnerDeliveryError.md) |  | [optional] |
| **reactions** | [**Array&lt;GetInboxConversationMessages200ResponseMessagesInnerReactionsInner&gt;**](GetInboxConversationMessages200ResponseMessagesInnerReactionsInner.md) | Emoji reactions on this message (WhatsApp / Telegram). At most one per party in a 1:1 thread. | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Platform-specific extras. Free-form, but commonly includes: &#x60;quotedMessageId&#x60; (platformMessageId this message replies to), &#x60;waInteractive&#x60; (a compact descriptor of WhatsApp interactive content sent: buttons / list / cta_url / flow / location_request), and for inbound interactive taps &#x60;interactiveType&#x60; / &#x60;interactiveId&#x60;.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxConversationMessages200ResponseMessagesInner.new(
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
  delivery_error: null,
  reactions: null,
  metadata: null
)
```

