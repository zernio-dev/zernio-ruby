# Zernio::WebhookPayloadAccountPermissionsChanged

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID: the dedupe key, also sent as the X-Zernio-Event-Id header and identical on every retry and redelivery. |  |
| **profiles** | [**Array&lt;WebhookProfilesInner&gt;**](WebhookProfilesInner.md) | The profiles this event belongs to, each with the externalId you set on it (null when none is set). Present on every event tied to a profile and absent on events that belong to none. Events spanning several profiles (a post published to accounts of different profiles) list each once. Use it to route the event to your tenant without storing Zernio profile ids. | [optional] |
| **test** | **Boolean** | Always true when present: only a sample sent by POST /v1/webhooks/test with an event carries it. | [optional] |
| **event** | **String** |  |  |
| **account** | [**WebhookPayloadAccountPermissionsChangedAccount**](WebhookPayloadAccountPermissionsChangedAccount.md) |  |  |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAccountPermissionsChanged.new(
  id: null,
  profiles: null,
  test: null,
  event: null,
  account: null,
  timestamp: null
)
```

