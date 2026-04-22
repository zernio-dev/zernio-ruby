# Zernio::WebhookPayloadAccountDisconnected

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID |  |
| **event** | **String** |  |  |
| **account** | [**WebhookPayloadAccountDisconnectedAccount**](WebhookPayloadAccountDisconnectedAccount.md) |  |  |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAccountDisconnected.new(
  id: null,
  event: null,
  account: null,
  timestamp: null
)
```

