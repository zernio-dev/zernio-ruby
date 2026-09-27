# Zernio::WebhookPayloadAnalyticsSynced

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID: the dedupe key, also sent as the X-Zernio-Event-Id header and identical on every retry and redelivery. It identifies the event only, never an account or other resource. |  |
| **event** | **String** |  |  |
| **account** | [**WebhookPayloadAnalyticsSyncedAccount**](WebhookPayloadAnalyticsSyncedAccount.md) |  |  |
| **sync** | [**WebhookPayloadAnalyticsSyncedSync**](WebhookPayloadAnalyticsSyncedSync.md) |  |  |
| **timestamp** | **Time** | UTC time at which Zernio generated this event (set once when the event payload is built, before delivery is queued). |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAnalyticsSynced.new(
  id: null,
  event: null,
  account: null,
  sync: null,
  timestamp: null
)
```

