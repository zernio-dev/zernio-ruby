# Late::WebhookPayloadAccountConnected

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID |  |
| **event** | **String** |  |  |
| **account** | [**WebhookPayloadAccountConnectedAccount**](WebhookPayloadAccountConnectedAccount.md) |  |  |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'late-sdk'

instance = Late::WebhookPayloadAccountConnected.new(
  id: null,
  event: null,
  account: null,
  timestamp: null
)
```

