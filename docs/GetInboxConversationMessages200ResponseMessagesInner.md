# Zernio::GetInboxConversationMessages200ResponseMessagesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The platform&#39;s own message id: the &#x60;wamid&#x60; on WhatsApp, the &#x60;mid&#x60; on Instagram and Facebook Messenger. This is what &#x60;metadata.quotedMessageId&#x60; points at, the value to pass as &#x60;replyTo&#x60; on the platforms that support quote-replies, and the &#x60;{messageId}&#x60; segment of the attachment-resolve URL. Webhooks deliver the same value as &#x60;message.platformMessageId&#x60;; this response has no field by that name.  | [optional] |
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
| **metadata** | **Hash&lt;String, Object&gt;** | Platform-specific extras. Free-form, but commonly includes: &#x60;quotedMessageId&#x60; (the &#x60;id&#x60; of the message this one replies to, delivered as &#x60;message.platformMessageId&#x60; on webhooks), &#x60;waInteractive&#x60; (a compact descriptor of WhatsApp interactive content sent: buttons / list / cta_url / flow / location_request), and for inbound interactive taps &#x60;interactiveType&#x60; / &#x60;interactiveId&#x60;. It can also carry &#x60;source&#x60; (&#x60;whatsapp_business_app&#x60; / &#x60;coexistence_history&#x60; on a WhatsApp Coexistence number, &#x60;bulk-api&#x60; on a POST /v1/whatsapp/bulk send), which is where the message reached us from rather than who produced it: read &#x60;sentVia&#x60; for that.  | [optional] |
| **sent_via** | **String** | Which Zernio surface produced this outgoing message: &#x60;human&#x60; (an operator in the Zernio inbox), &#x60;api&#x60; (a call to this API), &#x60;broadcast&#x60;, &#x60;sequence&#x60;, &#x60;workflow&#x60;, &#x60;comment_automation&#x60;, or &#x60;bulk-api&#x60; (POST /v1/whatsapp/bulk). Same vocabulary as the &#x60;source&#x60; filter on the inbox analytics endpoints.  Always present, and &#x60;null&#x60; whenever the lineage is unknown: every incoming message, any outgoing message sent from the platform&#39;s own app, and every message stored before this field shipped (2026-08). Existing messages are NOT backfilled, so treat &#x60;null&#x60; as \&quot;unknown\&quot;, never as \&quot;sent by a human\&quot;.  | [optional] |

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
  metadata: null,
  sent_via: null
)
```

