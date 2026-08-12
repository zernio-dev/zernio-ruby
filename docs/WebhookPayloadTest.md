# Zernio::WebhookPayloadTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID |  |
| **event** | **String** |  |  |
| **message** | **String** | Human-readable test message |  |
| **timestamp** | **Time** | UTC time at which Zernio generated this test event (set once when the payload is built). Test fires are sent synchronously as a single attempt; a later redelivery of this event keeps the original value. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadTest.new(
  id: null,
  event: null,
  message: null,
  timestamp: null
)
```

