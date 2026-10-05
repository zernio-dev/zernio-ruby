# Zernio::Webhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | Unique webhook identifier | [optional] |
| **name** | **String** | Webhook name (for identification) | [optional] |
| **url** | **String** | Webhook endpoint URL | [optional] |
| **secret** | **String** | Secret key for HMAC-SHA256 signature verification. | [optional] |
| **events** | **Array&lt;String&gt;** | Events subscribed to | [optional] |
| **is_active** | **Boolean** | Whether webhook delivery is enabled | [optional] |
| **last_fired_at** | **Time** | Timestamp of last successful webhook delivery | [optional] |
| **failure_count** | **Integer** | Consecutive terminal delivery failures (resets to 0 on any successful delivery). Auto-disable only triggers when the endpoint has had no successful delivery within a 3-day window AND either reaches 20 consecutive terminal failures or has been failing continuously for 3 days; any success within that window keeps the endpoint enabled regardless of the count. | [optional] |
| **custom_headers** | **Hash&lt;String, String&gt;** | Custom headers included in webhook requests | [optional] |
| **disabled_resource_groups** | **Array&lt;String&gt;** | Resource groups this subscription does not receive (opt-out denylist, same vocabulary and same semantics as the field on API keys). Absent or empty means the subscription receives every event listed in &#x60;events&#x60;, which is how every subscription created before this field existed behaves. An event whose group is listed here is dropped before delivery even when it is still present in &#x60;events&#x60;, and the same check runs on every replay path (test fire, redelivery, dead-letter requeue). Editing the denylist applies to every event emitted afterwards; events already queued when the edit landed can still be delivered for up to five minutes after they were enqueued. | [optional] |
| **profile_ids** | **Array&lt;String&gt;** | Profiles this subscription receives events for (allowlist). Absent or empty means every profile, which is how every subscription created before this field existed behaves. A scoped subscription is only sent events attributable to a listed profile. An aggregate &#x60;post.*&#x60; event is attributed to the profile of every account the post targets, so a post spanning two scoped endpoints&#39; profiles reaches both. Events with no profile behind them (&#x60;verification.*&#x60;, &#x60;phone_number.*&#x60;, a legacy post whose accounts were deleted) are not delivered to it. Applied when the event is emitted: a redelivery replays a delivery already made to this endpoint, and a test fire ignores the list. | [optional] |
| **account_ids** | **Array&lt;String&gt;** | Connected accounts this subscription receives events for (allowlist). Absent or empty means every account. Same semantics as &#x60;profileIds&#x60;, keyed on the account: an aggregate &#x60;post.*&#x60; event is attributed to every account the post targets. Events that name no connected account (&#x60;verification.*&#x60;, &#x60;phone_number.*&#x60;, and &#x60;whatsapp.number.*&#x60;, which carry the phone number) are not delivered to an account-scoped subscription. A subscription with both lists must be satisfied on both. Applied when the event is emitted; a redelivery replays a delivery already made to this endpoint and a test fire ignores the list. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::Webhook.new(
  _id: null,
  name: null,
  url: null,
  secret: null,
  events: null,
  is_active: null,
  last_fired_at: null,
  failure_count: null,
  custom_headers: null,
  disabled_resource_groups: null,
  profile_ids: null,
  account_ids: null
)
```

