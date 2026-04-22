# Zernio::WebhookPayloadMessageDeliveryStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **event** | **String** |  |  |
| **message** | [**InboxWebhookMessage**](InboxWebhookMessage.md) |  |  |
| **status_at** | **Time** | When the platform reported this status. |  |
| **error** | [**WebhookPayloadMessageDeliveryStatusError**](WebhookPayloadMessageDeliveryStatusError.md) |  | [optional] |
| **conversation** | [**InboxWebhookConversation**](InboxWebhookConversation.md) |  |  |
| **account** | [**InboxWebhookAccount**](InboxWebhookAccount.md) |  |  |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMessageDeliveryStatus.new(
  id: null,
  event: null,
  message: null,
  status_at: null,
  error: null,
  conversation: null,
  account: null,
  timestamp: null
)
```

