# Zernio::WebhookPayloadContactFieldChanged

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **test** | **Boolean** | Always true when present: only a sample sent by POST /v1/webhooks/test with an event carries it. Real deliveries never do. | [optional] |
| **id** | **String** | Event id, the dedupe key. |  |
| **profiles** | [**Array&lt;WebhookProfilesInner&gt;**](WebhookProfilesInner.md) | The profiles this event belongs to, each with the externalId you set on it (null when none is set). Use it to route the event to your tenant without storing Zernio profile ids.  Present on every event tied to a profile, absent on events that belong to none. Events spanning several profiles (a post published to accounts of different profiles) list each once.  | [optional] |
| **event** | **String** |  |  |
| **timestamp** | **Time** |  |  |
| **contact** | [**WebhookPayloadContactTagContact**](WebhookPayloadContactTagContact.md) |  |  |
| **field** | **String** | Custom field slug. |  |
| **previous_value** | **Object** |  |  |
| **value** | **Object** |  |  |
| **source** | **String** | Who wrote the field: the API or dashboard, a workflow set_field node, or an automation. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadContactFieldChanged.new(
  test: null,
  id: null,
  profiles: null,
  event: null,
  timestamp: null,
  contact: null,
  field: null,
  previous_value: null,
  value: null,
  source: null
)
```

