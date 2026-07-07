# Zernio::CreatePost403Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** |  | [optional] |
| **code** | **String** | Stable machine-readable cause. Absent for ownership failures. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatePost403Response.new(
  error: Account 6a0f6d2e520992756d96bb6c (facebook &quot;My Page&quot;) is disconnected and cannot be posted to. Facebook tokens expired. Please reconnect your Facebook account. After reconnecting, refresh your account IDs from GET /v1/accounts.,
  code: null
)
```

