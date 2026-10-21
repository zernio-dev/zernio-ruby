# Zernio::SetUpAdAccountBilling200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **payments_account_id** | **String** |  | [optional] |
| **payments_account_name** | **String** |  | [optional] |
| **billing_setup_id** | **String** |  | [optional] |
| **reused_billing_setup** | **Boolean** |  | [optional] |
| **account_budget_proposal_id** | **String** | Always null for validateOnly. | [optional] |
| **validate_only** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SetUpAdAccountBilling200Response.new(
  customer_id: null,
  payments_account_id: null,
  payments_account_name: null,
  billing_setup_id: null,
  reused_billing_setup: null,
  account_budget_proposal_id: null,
  validate_only: null
)
```

