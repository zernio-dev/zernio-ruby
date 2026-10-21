# Zernio::GetAdAccountBilling200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **payments_accounts** | [**Array&lt;GetAdAccountBilling200ResponsePaymentsAccountsInner&gt;**](GetAdAccountBilling200ResponsePaymentsAccountsInner.md) |  | [optional] |
| **billing_setups** | [**Array&lt;GetAdAccountBilling200ResponseBillingSetupsInner&gt;**](GetAdAccountBilling200ResponseBillingSetupsInner.md) |  | [optional] |
| **account_budgets** | [**Array&lt;GetAdAccountBilling200ResponseAccountBudgetsInner&gt;**](GetAdAccountBilling200ResponseAccountBudgetsInner.md) |  | [optional] |
| **pending_budget_proposals** | [**Array&lt;GetAdAccountBilling200ResponsePendingBudgetProposalsInner&gt;**](GetAdAccountBilling200ResponsePendingBudgetProposalsInner.md) | New account budgets proposed but not yet approved by Google. A setup with one is not reused by the POST. | [optional] |
| **cached_at** | **Time** | When this data was fetched from Google. Null when the cache is unavailable. | [optional] |
| **stale** | **Boolean** | True when Google&#39;s quota was exhausted and this is the last successful fetch. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdAccountBilling200Response.new(
  customer_id: null,
  payments_accounts: null,
  billing_setups: null,
  account_budgets: null,
  pending_budget_proposals: null,
  cached_at: null,
  stale: null
)
```

