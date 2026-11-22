# Zernio::WebhookPayloadEmailSent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **profiles** | [**Array&lt;WebhookProfilesInner&gt;**](WebhookProfilesInner.md) | The profiles this event belongs to, each with the externalId you set on it (null when none is set). Use it to route the event to your tenant without storing Zernio profile ids.  Present on every event tied to a profile, absent on events that belong to none. Events spanning several profiles (a post published to accounts of different profiles) list each once.  | [optional] |
| **test** | **Boolean** | Always true when present: only a sample sent by POST /v1/webhooks/test with an event carries it. Real deliveries never do. | [optional] |
| **event** | **String** |  |  |
| **account** | [**WebhookPayloadCalendarEventAccount**](WebhookPayloadCalendarEventAccount.md) |  |  |
| **source** | **String** |  |  |
| **email** | [**WebhookPayloadEmailSentEmail**](WebhookPayloadEmailSentEmail.md) |  |  |
| **draft_id** | **String** | The draft it was sent from (&#x60;source: draft&#x60;, or a scheduled draft). | [optional] |
| **schedule_id** | **String** | The scheduled send (&#x60;source: scheduled&#x60;). | [optional] |
| **reply_to_message_id** | **String** |  | [optional] |
| **forwarded_from** | **String** |  | [optional] |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadEmailSent.new(
  id: null,
  profiles: null,
  test: null,
  event: null,
  account: null,
  source: null,
  email: null,
  draft_id: null,
  schedule_id: null,
  reply_to_message_id: null,
  forwarded_from: null,
  timestamp: null
)
```

