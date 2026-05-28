# Zernio::WebhookPayloadCallEnded

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **event** | **String** |  |  |
| **call** | [**WebhookPayloadCallEndedCall**](WebhookPayloadCallEndedCall.md) |  |  |
| **account** | [**InboxWebhookAccount**](InboxWebhookAccount.md) |  |  |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCallEnded.new(
  id: null,
  event: null,
  call: null,
  account: null,
  timestamp: null
)
```

