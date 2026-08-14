# Zernio::WebhookPayloadReferral

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID |  |
| **event** | **String** |  |  |
| **referral** | [**WebhookPayloadReferralReferral**](WebhookPayloadReferralReferral.md) |  |  |
| **sender** | [**WebhookPayloadReferralSender**](WebhookPayloadReferralSender.md) |  |  |
| **conversation** | [**InboxWebhookConversation**](InboxWebhookConversation.md) |  |  |
| **account** | [**InboxWebhookAccount**](InboxWebhookAccount.md) |  |  |
| **timestamp** | **Time** | UTC time at which Zernio generated this event (set once when the event payload is built, before delivery is queued). Retries and redeliveries keep the original value, so it reflects the event, not the delivery attempt. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadReferral.new(
  id: null,
  event: null,
  referral: null,
  sender: null,
  conversation: null,
  account: null,
  timestamp: null
)
```

