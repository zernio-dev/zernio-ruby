# Zernio::WebhookPayloadBillingPublishingUnblocked

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID: the dedupe key, also sent as the X-Zernio-Event-Id header and identical on every retry and redelivery. It identifies the event only, never an account or other resource. |  |
| **test** | **Boolean** | Always true when present: only a sample sent by POST /v1/webhooks/test with an event carries it. Real deliveries never do. | [optional] |
| **event** | **String** |  |  |
| **billing** | [**WebhookPayloadBillingPublishingUnblockedBilling**](WebhookPayloadBillingPublishingUnblockedBilling.md) |  |  |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadBillingPublishingUnblocked.new(
  id: null,
  test: null,
  event: null,
  billing: null,
  timestamp: null
)
```

