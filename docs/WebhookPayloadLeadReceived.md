# Zernio::WebhookPayloadLeadReceived

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID |  |
| **event** | **String** |  |  |
| **lead** | [**Lead**](Lead.md) |  |  |
| **account** | [**WebhookPayloadLeadReceivedAccount**](WebhookPayloadLeadReceivedAccount.md) |  |  |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadLeadReceived.new(
  id: null,
  event: null,
  lead: null,
  account: null,
  timestamp: null
)
```

