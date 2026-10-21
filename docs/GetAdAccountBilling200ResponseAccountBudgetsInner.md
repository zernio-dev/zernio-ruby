# Zernio::GetAdAccountBilling200ResponseAccountBudgetsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_budget_id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **billing_setup_id** | **String** |  | [optional] |
| **approved_spending_limit_micros** | **String** |  | [optional] |
| **approved_spending_limit_type** | **String** | INFINITE for an unlimited budget. | [optional] |
| **pending_proposal_id** | **String** | Account budget proposal still waiting for Google&#39;s review. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdAccountBilling200ResponseAccountBudgetsInner.new(
  account_budget_id: null,
  status: null,
  billing_setup_id: null,
  approved_spending_limit_micros: null,
  approved_spending_limit_type: null,
  pending_proposal_id: null
)
```

