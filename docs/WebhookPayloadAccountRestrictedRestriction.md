# Zernio::WebhookPayloadAccountRestrictedRestriction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reason** | **String** | &#x60;suspended&#x60;: banned or suspended by the platform. &#x60;restricted&#x60;: locked, restricted or blocked from posting. &#x60;verification_required&#x60;: the platform asks for an identity or security check. &#x60;auth_expired&#x60;: the login stopped working; reconnect. |  |
| **message** | **String** | The error the last failed post carries. |  |
| **platform_error** | [**WebhookPayloadAccountRestrictedRestrictionPlatformError**](WebhookPayloadAccountRestrictedRestrictionPlatformError.md) |  |  |
| **consecutive_failures** | **Integer** | Identical failures in a row that restricted the account. |  |
| **since** | **Time** |  |  |
| **post_id** | **String** | The post whose failure restricted the account. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAccountRestrictedRestriction.new(
  reason: null,
  message: null,
  platform_error: null,
  consecutive_failures: null,
  since: null,
  post_id: null
)
```

