# Zernio::TreasuryTopup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **method** | **String** |  | [optional] |
| **purpose** | **String** | &#x60;balance&#x60; funds your balance; &#x60;payout_batch&#x60; is the card payment of one payout batch, which pays its creators directly. | [optional] |
| **payout_batch** | [**TreasuryTopupPayoutBatch**](TreasuryTopupPayoutBatch.md) |  | [optional] |
| **fee_covered_by_zernio** | **Boolean** | True for a &#x60;payout_batch&#x60; payment: Zernio pays the Stripe processing fee out of its transfer fee, so you are credited the whole charge. | [optional] |
| **amount_cents** | **Integer** | Gross amount charged | [optional] |
| **stripe_fee_cents** | **Integer** | Stripe processing fee you paid; null until Stripe reports it, 0 when Zernio covers it | [optional] |
| **net_cents** | **Integer** | Amount credited to your balance: gross minus the Stripe fee, or the whole charge when Zernio covers the fee; null until Stripe reports it | [optional] |
| **status** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **succeeded_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TreasuryTopup.new(
  id: null,
  method: null,
  purpose: null,
  payout_batch: null,
  fee_covered_by_zernio: null,
  amount_cents: null,
  stripe_fee_cents: null,
  net_cents: null,
  status: null,
  created_at: null,
  succeeded_at: null
)
```

