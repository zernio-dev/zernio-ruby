# Zernio::WebhookPayloadMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID |  |
| **event** | **String** |  |  |
| **message** | [**WebhookPayloadMessageMessage**](WebhookPayloadMessageMessage.md) |  |  |
| **conversation** | [**InboxWebhookConversation**](InboxWebhookConversation.md) |  |  |
| **account** | [**InboxWebhookAccount**](InboxWebhookAccount.md) |  |  |
| **metadata** | [**WebhookPayloadMessageMetadata**](WebhookPayloadMessageMetadata.md) |  | [optional] |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMessage.new(
  id: null,
  event: null,
  message: null,
  conversation: null,
  account: null,
  metadata: null,
  timestamp: null
)
```

