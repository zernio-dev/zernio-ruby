# Late::UpdateWebhookSettingsRequest

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

## Example

```ruby
require 'late-sdk'

instance = Late::UpdateWebhookSettingsRequest.new(
  _id: null,
  name: null,
  url: null,
  secret: null,
  events: null,
  is_active: null,
  custom_headers: null
)
```

