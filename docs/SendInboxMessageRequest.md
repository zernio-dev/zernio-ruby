# Zernio::SendInboxMessageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Social account ID |  |
| **message** | **String** | Message text | [optional] |
| **attachment_url** | **String** | URL of the attachment to send (image, video, audio, or file). The URL must be publicly accessible. For binary file uploads, use multipart/form-data instead. | [optional] |
| **attachment_type** | **String** | Type of attachment. Defaults to file if not specified. | [optional] |
| **voice_note** | **Boolean** | WhatsApp only. When &#x60;true&#x60; on an audio attachment, the message is sent as a voice message (PTT) — the recipient sees the waveform + voice-note UI instead of a basic audio attachment. The audio file MUST be &#x60;.ogg&#x60; encoded with the OPUS codec (mono) per Meta&#39;s voice-message contract; other formats are rejected by WhatsApp. Ignored for non-audio attachments.  | [optional] |
| **quick_replies** | [**Array&lt;SendInboxMessageRequestQuickRepliesInner&gt;**](SendInboxMessageRequestQuickRepliesInner.md) | Quick reply buttons. Mutually exclusive with buttons. Max 13 items. | [optional] |
| **buttons** | [**Array&lt;SendInboxMessageRequestButtonsInner&gt;**](SendInboxMessageRequestButtonsInner.md) | Action buttons. Mutually exclusive with quickReplies. Max 3 items. | [optional] |
| **template** | [**SendInboxMessageRequestTemplate**](SendInboxMessageRequestTemplate.md) |  | [optional] |
| **interactive** | [**SendInboxMessageRequestInteractive**](SendInboxMessageRequestInteractive.md) |  | [optional] |
| **reply_markup** | [**SendInboxMessageRequestReplyMarkup**](SendInboxMessageRequestReplyMarkup.md) |  | [optional] |
| **messaging_type** | **String** | Facebook messaging type. Required when using messageTag. | [optional] |
| **message_tag** | **String** | Facebook message tag for messaging outside 24h window. Requires messagingType MESSAGE_TAG. Instagram only supports HUMAN_AGENT. | [optional] |
| **reply_to** | **String** | Platform message ID to quote-reply to. For WhatsApp, pass the wamid (available in message.platformMessageId from webhooks). For Telegram, pass the Telegram message ID. | [optional] |
| **location** | [**SendInboxMessageRequestLocation**](SendInboxMessageRequestLocation.md) |  | [optional] |
| **contacts** | [**Array&lt;SendInboxMessageRequestContactsInner&gt;**](SendInboxMessageRequestContactsInner.md) | WhatsApp-only. Send one or more contact cards. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendInboxMessageRequest.new(
  account_id: null,
  message: null,
  attachment_url: null,
  attachment_type: null,
  voice_note: null,
  quick_replies: null,
  buttons: null,
  template: null,
  interactive: null,
  reply_markup: null,
  messaging_type: null,
  message_tag: null,
  reply_to: null,
  location: null,
  contacts: null
)
```

