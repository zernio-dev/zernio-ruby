# Zernio::GetAdAccountBilling200ResponsePaymentsAccountsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payments_account_id** | **String** | Format 1234-5678-9012-3456. Pass it to POST /v1/ads/accounts/billing. | [optional] |
| **name** | **String** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **payments_profile_id** | **String** |  | [optional] |
| **paying_manager_customer_id** | **String** | Manager whose monthly invoice pays this account. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdAccountBilling200ResponsePaymentsAccountsInner.new(
  payments_account_id: null,
  name: null,
  currency: null,
  payments_profile_id: null,
  paying_manager_customer_id: null
)
```

