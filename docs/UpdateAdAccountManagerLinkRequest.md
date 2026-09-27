# Zernio::UpdateAdAccountManagerLinkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Google ads SocialAccount id. |  |
| **manager_customer_id** | **String** | Manager customer id, digits only. |  |
| **client_customer_id** | **String** | Client customer id, digits only. |  |
| **manager_link_id** | **String** | Numeric link id from GET /v1/ads/accounts/hierarchy. |  |
| **action** | **String** |  |  |
| **validate_only** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdAccountManagerLinkRequest.new(
  account_id: null,
  manager_customer_id: null,
  client_customer_id: null,
  manager_link_id: null,
  action: null,
  validate_only: null
)
```

