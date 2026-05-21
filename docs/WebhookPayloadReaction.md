# Zernio::WebhookPayloadReaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID |  |
| **event** | **String** |  |  |
| **reaction** | [**WebhookPayloadReactionReaction**](WebhookPayloadReactionReaction.md) |  |  |
| **conversation** | [**WebhookPayloadReactionConversation**](WebhookPayloadReactionConversation.md) |  |  |
| **account** | [**WebhookPayloadReactionAccount**](WebhookPayloadReactionAccount.md) |  |  |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadReaction.new(
  id: null,
  event: null,
  reaction: null,
  conversation: null,
  account: null,
  timestamp: null
)
```

