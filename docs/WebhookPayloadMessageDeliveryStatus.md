# Late::WebhookPayloadMessageDeliveryStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **event** | **String** |  |  |
| **message** | [**WebhookPayloadMessageMessage**](WebhookPayloadMessageMessage.md) |  |  |
| **status_at** | **Time** | When the platform reported this status. |  |
| **error** | [**WebhookPayloadMessageDeliveryStatusError**](WebhookPayloadMessageDeliveryStatusError.md) |  | [optional] |
| **conversation** | [**WebhookPayloadMessageConversation**](WebhookPayloadMessageConversation.md) |  |  |
| **account** | [**WebhookPayloadMessageAccount**](WebhookPayloadMessageAccount.md) |  |  |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'late-sdk'

instance = Late::WebhookPayloadMessageDeliveryStatus.new(
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

