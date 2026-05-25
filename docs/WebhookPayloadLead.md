# Zernio::WebhookPayloadLead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID |  |
| **event** | **String** |  |  |
| **lead** | [**WebhookPayloadLeadLead**](WebhookPayloadLeadLead.md) |  |  |
| **account** | [**WebhookPayloadLeadAccount**](WebhookPayloadLeadAccount.md) |  |  |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadLead.new(
  id: null,
  event: null,
  lead: null,
  account: null,
  timestamp: null
)
```

