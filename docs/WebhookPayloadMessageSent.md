# Zernio::WebhookPayloadMessageSent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID |  |
| **event** | **String** |  |  |
| **message** | [**WebhookPayloadMessageSentMessage**](WebhookPayloadMessageSentMessage.md) |  |  |
| **conversation** | [**WebhookPayloadMessageConversation**](WebhookPayloadMessageConversation.md) |  |  |
| **account** | [**WebhookPayloadMessageAccount**](WebhookPayloadMessageAccount.md) |  |  |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMessageSent.new(
  id: null,
  event: null,
  message: null,
  conversation: null,
  account: null,
  timestamp: null
)
```

