# Zernio::WebhookPayloadCallReceived

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID |  |
| **event** | **String** |  |  |
| **call** | [**WebhookPayloadCallReceivedCall**](WebhookPayloadCallReceivedCall.md) |  |  |
| **account** | [**InboxWebhookAccount**](InboxWebhookAccount.md) |  |  |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCallReceived.new(
  id: null,
  event: null,
  call: null,
  account: null,
  timestamp: null
)
```

