# Zernio::CreateWebhookSettingsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Webhook name (1-50 characters) |  |
| **url** | **String** | Webhook endpoint URL (must be a valid URL, whitespace trimmed) |  |
| **secret** | **String** | Secret key for HMAC-SHA256 signature verification | [optional] |
| **events** | **Array&lt;String&gt;** | Events to subscribe to (at least one required) |  |
| **is_active** | **Boolean** | Enable or disable webhook delivery. Defaults to &#x60;true&#x60; when omitted. | [optional][default to true] |
| **custom_headers** | **Hash&lt;String, String&gt;** | Custom headers to include in webhook requests | [optional] |
| **disabled_resource_groups** | **Array&lt;String&gt;** | Resource groups this subscription does not receive (opt-out denylist). Omit or send an empty array to receive every event in &#x60;events&#x60;. Listing a group here drops its events before delivery and on every replay path. Set at creation it applies to everything this subscription ever receives; changed later via PUT it applies to events emitted after the change, with a five-minute tail for events already queued (see that operation). When the caller is a restricted (zrk_) key, that key&#39;s own disabled groups are unioned into whatever you send here, so a restricted key can never create a subscription wider than itself. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateWebhookSettingsRequest.new(
  name: null,
  url: null,
  secret: null,
  events: null,
  is_active: null,
  custom_headers: null,
  disabled_resource_groups: null
)
```

