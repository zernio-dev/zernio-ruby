# Zernio::WebhookPayloadBillingPublishingBlocked

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID: the dedupe key, also sent as the X-Zernio-Event-Id header and identical on every retry and redelivery. It identifies the event only, never an account or other resource. |  |
| **test** | **Boolean** | Always true when present: only a sample sent by POST /v1/webhooks/test with an event carries it. Real deliveries never do. | [optional] |
| **event** | **String** |  |  |
| **billing** | [**WebhookPayloadBillingPublishingBlockedBilling**](WebhookPayloadBillingPublishingBlockedBilling.md) |  |  |
| **billing_url** | **String** | Dashboard page where the owner pays or replaces the card. |  |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadBillingPublishingBlocked.new(
  id: null,
  test: null,
  event: null,
  billing: null,
  billing_url: null,
  timestamp: null
)
```

