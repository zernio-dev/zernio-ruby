# Zernio::CreatePost404Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** |  | [optional] |
| **code** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatePost404Response.new(
  error: One or more accounts do not belong to this user: 6a0f6d2e520992756d96bb6c. No account with this ID exists: it was deleted, or reconnected under a new ID. Refresh your account IDs from GET /v1/accounts.,
  code: null
)
```

