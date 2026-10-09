# Zernio::WebhookPayloadAccountAdsSyncFailed

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID: the dedupe key, also sent as the X-Zernio-Event-Id header and identical on every retry and redelivery. |  |
| **test** | **Boolean** | Always true when present: only a sample sent by POST /v1/webhooks/test with an event carries it. Real deliveries never do. | [optional] |
| **event** | **String** |  |  |
| **account** | [**WebhookAdsSyncAccount**](WebhookAdsSyncAccount.md) |  |  |
| **ad_account** | [**WebhookAdsSyncAdAccount**](WebhookAdsSyncAdAccount.md) |  |  |
| **sync** | [**WebhookPayloadAccountAdsSyncFailedSync**](WebhookPayloadAccountAdsSyncFailedSync.md) |  |  |
| **timestamp** | **Time** | UTC time at which Zernio generated this event. Retries and redeliveries keep the original value. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAccountAdsSyncFailed.new(
  id: null,
  test: null,
  event: null,
  account: null,
  ad_account: null,
  sync: null,
  timestamp: null
)
```

