# Zernio::WebhookPayloadCallFailed

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **event** | **String** |  |  |
| **call** | [**WebhookPayloadCallFailedCall**](WebhookPayloadCallFailedCall.md) |  |  |
| **account** | [**InboxWebhookAccount**](InboxWebhookAccount.md) |  |  |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCallFailed.new(
  id: null,
  event: null,
  call: null,
  account: null,
  timestamp: null
)
```

