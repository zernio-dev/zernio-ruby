# Zernio::RevokeConnectedApp200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **revoked** | **Boolean** |  | [optional] |
| **client_id** | **String** |  | [optional] |
| **revoked_tokens** | **Integer** | Access and refresh tokens revoked by this call. | [optional] |
| **invalidated_codes** | **Integer** | Pending authorization codes invalidated by this call. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RevokeConnectedApp200Response.new(
  revoked: null,
  client_id: null,
  revoked_tokens: null,
  invalidated_codes: null
)
```

