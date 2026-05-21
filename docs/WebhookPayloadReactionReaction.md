# Zernio::WebhookPayloadReactionReaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **emoji** | **String** | The emoji reacted with. May be an empty string when &#x60;action&#x60; is &#x60;removed&#x60; on WhatsApp (Meta does not report which emoji was removed).  |  |
| **action** | **String** |  |  |
| **message_id** | **String** | Internal Zernio message ID of the reacted-to message, when resolvable from the platform ID. | [optional] |
| **platform_message_id** | **String** | Platform-native ID of the reacted-to message (e.g. WhatsApp wamid). |  |
| **sender** | [**WebhookPayloadReactionReactionSender**](WebhookPayloadReactionReactionSender.md) |  |  |
| **reacted_at** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadReactionReaction.new(
  emoji: null,
  action: null,
  message_id: null,
  platform_message_id: null,
  sender: null,
  reacted_at: null
)
```

