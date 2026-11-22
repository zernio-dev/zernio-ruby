# Zernio::Profile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **color** | **String** |  | [optional] |
| **timezone** | **String** | IANA timezone new posts on this profile use when the request names no &#x60;timezone&#x60;. Null means UTC. | [optional] |
| **external_id** | **String** | Your own identifier for this profile, set on create or update. Null when none is set. | [optional] |
| **content_retention** | **String** | This profile&#39;s own zero content retention setting. &#x60;none&#x60; stores identifiers and metadata only for this profile. Change it with &#x60;contentRetention&#x60; on update; only the team owner can. | [optional] |
| **effective_content_retention** | **String** | The mode that applies to this profile: &#x60;none&#x60; when the profile or the whole team uses zero content retention. | [optional] |
| **max_outbound_calls_per_hour** | **Integer** | Most outbound calls placed from this profile&#39;s numbers in any rolling hour. Null means only the team limits apply. | [optional] |
| **max_daily_call_spend_usd** | **Float** | Most billed spend, in USD, on outbound calls and calls forwarded to a phone from this profile&#39;s numbers in any rolling 24 hours. Null means only the team limits apply. | [optional] |
| **max_forwarded_minutes_per_day** | **Integer** | Most minutes of inbound calls forwarded to a phone from this profile&#39;s numbers in any rolling 24 hours. Null means only the team limits apply. | [optional] |
| **is_default** | **Boolean** |  | [optional] |
| **is_over_limit** | **Boolean** | Only present when includeOverLimit&#x3D;true. Indicates if this profile exceeds the plan limit. | [optional] |
| **account_count** | **Integer** | In the profile list. Connected accounts on the profile, including ones that need reconnecting; phone and SMS number internals and posting accounts hidden by an ads connect are not counted. | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::Profile.new(
  _id: null,
  user_id: null,
  name: null,
  description: null,
  color: null,
  timezone: null,
  external_id: null,
  content_retention: null,
  effective_content_retention: null,
  max_outbound_calls_per_hour: null,
  max_daily_call_spend_usd: null,
  max_forwarded_minutes_per_day: null,
  is_default: null,
  is_over_limit: null,
  account_count: null,
  created_at: null
)
```

