# Zernio::CreateProfileRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **color** | **String** |  | [optional] |
| **timezone** | **String** | IANA timezone new posts on this profile use when they name no &#x60;timezone&#x60;. Omit to keep UTC. An unknown name returns 400. | [optional] |
| **external_id** | **String** | Your own identifier for this profile, typically the id of the tenant or client it serves in your system (1 to 255 characters, trimmed). Unique among the profiles of the user who owns the profile: a duplicate returns 409 profile_external_id_conflict. Look a profile up by it with GET /v1/profiles?externalId&#x3D;. | [optional] |
| **content_retention** | **String** | Set &#x60;none&#x60; to create the profile with zero content retention, so nothing of its accounts is stored from the first sync. Only the team owner can, with a session or a full-access key; anyone else gets 403. | [optional] |
| **max_outbound_calls_per_hour** | **Integer** | Caps outbound calls from this profile&#39;s numbers per rolling hour, inside the team limits. Omit for no profile cap. | [optional] |
| **max_daily_call_spend_usd** | **Float** | Caps billed call spend (USD) from this profile&#39;s numbers per rolling 24 hours, inside the team limits. Omit for no profile cap. | [optional] |
| **max_forwarded_minutes_per_day** | **Integer** | Caps minutes forwarded to a phone from this profile&#39;s numbers per rolling 24 hours, inside the team limits. Omit for no profile cap. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateProfileRequest.new(
  name: null,
  description: null,
  color: #ffeda0,
  timezone: Europe/Istanbul,
  external_id: tenant_42,
  content_retention: null,
  max_outbound_calls_per_hour: null,
  max_daily_call_spend_usd: null,
  max_forwarded_minutes_per_day: null
)
```

