# Zernio::InviteAdAccountToManagerRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Google ads SocialAccount id. |  |
| **manager_customer_id** | **String** | Manager customer id, digits only. |  |
| **client_customer_id** | **String** | Client customer id to invite, digits only. |  |
| **validate_only** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InviteAdAccountToManagerRequest.new(
  account_id: null,
  manager_customer_id: null,
  client_customer_id: null,
  validate_only: null
)
```

