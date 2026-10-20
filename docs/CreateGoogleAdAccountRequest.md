# Zernio::CreateGoogleAdAccountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **account_id** | **String** | Zernio googleads SocialAccount ID whose Google user reaches the manager. |  |
| **manager_customer_id** | **String** | Manager (MCC) customer id without dashes. The new account is created under it. List reachable managers with GET /v1/ads/accounts/hierarchy. |  |
| **name** | **String** | Account name. Whitespace is trimmed. |  |
| **currency** | **String** | Uppercase ISO 4217 currency. Cannot be changed after creation. |  |
| **time_zone** | **String** | IANA time zone name, for example Europe/Madrid. Cannot be changed after creation. |  |
| **validate_only** | **Boolean** | Ask Google to validate the request without creating the account. | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateGoogleAdAccountRequest.new(
  platform: null,
  account_id: null,
  manager_customer_id: null,
  name: null,
  currency: null,
  time_zone: null,
  validate_only: null
)
```

