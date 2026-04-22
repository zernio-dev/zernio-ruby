# Zernio::WebhookPayloadAccountConnected

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID |  |
| **event** | **String** |  |  |
| **account** | [**WebhookPayloadAccountConnectedAccount**](WebhookPayloadAccountConnectedAccount.md) |  |  |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAccountConnected.new(
  id: null,
  event: null,
  account: null,
  timestamp: null
)
```

