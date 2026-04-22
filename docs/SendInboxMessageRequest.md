# Zernio::SendInboxMessageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Social account ID |  |
| **message** | **String** | Message text | [optional] |
| **attachment_url** | **String** | URL of the attachment to send (image, video, audio, or file). The URL must be publicly accessible. For binary file uploads, use multipart/form-data instead. | [optional] |
| **attachment_type** | **String** | Type of attachment. Defaults to file if not specified. | [optional] |
| **quick_replies** | [**Array&lt;SendInboxMessageRequestQuickRepliesInner&gt;**](SendInboxMessageRequestQuickRepliesInner.md) | Quick reply buttons. Mutually exclusive with buttons. Max 13 items. | [optional] |
| **buttons** | [**Array&lt;SendInboxMessageRequestButtonsInner&gt;**](SendInboxMessageRequestButtonsInner.md) | Action buttons. Mutually exclusive with quickReplies. Max 3 items. | [optional] |
| **template** | [**SendInboxMessageRequestTemplate**](SendInboxMessageRequestTemplate.md) |  | [optional] |
| **interactive** | [**SendInboxMessageRequestInteractive**](SendInboxMessageRequestInteractive.md) |  | [optional] |
| **reply_markup** | [**SendInboxMessageRequestReplyMarkup**](SendInboxMessageRequestReplyMarkup.md) |  | [optional] |
| **messaging_type** | **String** | Facebook messaging type. Required when using messageTag. | [optional] |
| **message_tag** | **String** | Facebook message tag for messaging outside 24h window. Requires messagingType MESSAGE_TAG. Instagram only supports HUMAN_AGENT. | [optional] |
| **reply_to** | **String** | Platform message ID to quote-reply to. For WhatsApp, pass the wamid (available in message.platformMessageId from webhooks). For Telegram, pass the Telegram message ID. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendInboxMessageRequest.new(
  account_id: null,
  message: null,
  attachment_url: null,
  attachment_type: null,
  quick_replies: null,
  buttons: null,
  template: null,
  interactive: null,
  reply_markup: null,
  messaging_type: null,
  message_tag: null,
  reply_to: null
)
```

