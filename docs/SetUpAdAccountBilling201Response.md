# Zernio::SetUpAdAccountBilling201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **payments_account_id** | **String** |  | [optional] |
| **payments_account_name** | **String** |  | [optional] |
| **billing_setup_id** | **String** |  | [optional] |
| **reused_billing_setup** | **Boolean** | True when an existing setup on the same payments account without a budget was completed. | [optional] |
| **account_budget_proposal_id** | **String** |  | [optional] |
| **validate_only** | **Boolean** |  | [optional] |
| **next_steps** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SetUpAdAccountBilling201Response.new(
  customer_id: null,
  payments_account_id: null,
  payments_account_name: null,
  billing_setup_id: null,
  reused_billing_setup: null,
  account_budget_proposal_id: null,
  validate_only: null,
  next_steps: null
)
```

