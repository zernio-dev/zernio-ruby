# Zernio::UpdateWebhookSettingsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | Webhook ID to update (required) |  |
| **name** | **String** | Webhook name (1-50 characters). Must be non-empty if provided. | [optional] |
| **url** | **String** | Webhook endpoint URL (must be a valid URL, whitespace trimmed). Must be a valid URL if provided. | [optional] |
| **secret** | **String** | Secret key for HMAC-SHA256 signature verification | [optional] |
| **events** | **Array&lt;String&gt;** | Events to subscribe to. Must contain at least one event if provided. | [optional] |
| **is_active** | **Boolean** | Enable or disable webhook delivery | [optional] |
| **custom_headers** | **Hash&lt;String, String&gt;** | Custom headers to include in webhook requests | [optional] |
| **disabled_resource_groups** | **Array&lt;String&gt;** | Replaces the subscription&#39;s denylist. Send an empty array to clear it and receive every event in &#x60;events&#x60; again. Omitting the field leaves the current denylist untouched. Applies to events emitted after the update; already-queued events can still deliver for up to five minutes after they were enqueued. When the caller is a restricted (zrk_) key, that key&#39;s own disabled groups are unioned back in either way, so a restricted key can neither clear nor widen a subscription past its own groups. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateWebhookSettingsRequest.new(
  _id: null,
  name: null,
  url: null,
  secret: null,
  events: null,
  is_active: null,
  custom_headers: null,
  disabled_resource_groups: null
)
```

