# Zernio::WebhookPayloadAccountRecoveredRecovery

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reason** | **String** | &#x60;suspended&#x60;: banned or suspended by the platform. &#x60;restricted&#x60;: locked, restricted or blocked from posting. &#x60;verification_required&#x60;: the platform asks for an identity or security check. &#x60;auth_expired&#x60;: the login stopped working; reconnect. |  |
| **restricted_since** | **Time** |  |  |
| **recovered_at** | **Time** |  |  |
| **post_id** | **String** | The post that published. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAccountRecoveredRecovery.new(
  reason: null,
  restricted_since: null,
  recovered_at: null,
  post_id: null
)
```

