# Zernio::RevokeAdAccountUserInvitation200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **invitation_id** | **String** |  | [optional] |
| **revoked** | **Boolean** | Always true. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RevokeAdAccountUserInvitation200Response.new(
  customer_id: null,
  invitation_id: null,
  revoked: null
)
```

