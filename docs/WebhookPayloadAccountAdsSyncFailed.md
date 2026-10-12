# Zernio::WebhookPayloadAccountAdsSyncFailed

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID: the dedupe key, also sent as the X-Zernio-Event-Id header and identical on every retry and redelivery. |  |
| **profiles** | [**Array&lt;WebhookProfilesInner&gt;**](WebhookProfilesInner.md) | The profiles this event belongs to, each with the externalId you set on it (null when none is set). Present on every event tied to a profile and absent on events that belong to none. Events spanning several profiles (a post published to accounts of different profiles) list each once. Use it to route the event to your tenant without storing Zernio profile ids. | [optional] |
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
  profiles: null,
  test: null,
  event: null,
  account: null,
  ad_account: null,
  sync: null,
  timestamp: null
)
```

