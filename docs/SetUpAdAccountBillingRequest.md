# Zernio::SetUpAdAccountBillingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Google ads SocialAccount id. |  |
| **ad_account_id** | **String** | Google Ads customer id to bill, digits only. |  |
| **payments_account_id** | **String** | Monthly invoicing payments account from GET /v1/ads/accounts/billing. |  |
| **spending_limit** | **Float** | Account budget cap in the account currency. Omit for an unlimited budget. | [optional] |
| **budget_name** | **String** |  | [optional][default to &#39;Zernio account budget&#39;] |
| **purchase_order_number** | **String** | Printed on the invoice. No effect on delivery. | [optional] |
| **validate_only** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SetUpAdAccountBillingRequest.new(
  account_id: null,
  ad_account_id: null,
  payments_account_id: null,
  spending_limit: null,
  budget_name: null,
  purchase_order_number: null,
  validate_only: null
)
```

