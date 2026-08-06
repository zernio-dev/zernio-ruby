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
| **failure_count** | **Integer** | Consecutive delivery failures (resets on success, webhook disabled at 10) | [optional] |
| **custom_headers** | **Hash&lt;String, String&gt;** | Custom headers included in webhook requests | [optional] |
| **disabled_resource_groups** | **Array&lt;String&gt;** | Resource groups this subscription does not receive (opt-out denylist, same vocabulary and same semantics as the field on API keys). Absent or empty means the subscription receives every event listed in &#x60;events&#x60;, which is how every subscription created before this field existed behaves. An event whose group is listed here is dropped before delivery even when it is still present in &#x60;events&#x60;, and the same check runs on every replay path (test fire, redelivery, dead-letter requeue). Editing the denylist applies to every event emitted afterwards; events already queued when the edit landed can still be delivered for up to five minutes after they were enqueued. | [optional] |

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
  disabled_resource_groups: null
)
```

