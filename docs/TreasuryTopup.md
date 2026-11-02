# Zernio::TreasuryTopup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **method** | **String** |  | [optional] |
| **purpose** | **String** | &#x60;balance&#x60; funds your balance; &#x60;payout_batch&#x60; is the card payment of one payout batch, which pays its creators directly. | [optional] |
| **payout_batch** | [**TreasuryTopupPayoutBatch**](TreasuryTopupPayoutBatch.md) |  | [optional] |
| **fee_covered_by_zernio** | **Boolean** | True for a &#x60;payout_batch&#x60; payment: Zernio pays the Stripe processing fee out of its transfer fee, so you are credited the whole charge. | [optional] |
| **amount_cents** | **Integer** | The amount you asked for. A top-up charges the card fee on top of it and credits what Stripe delivers, at least this amount. Older top-ups charged this amount and credited it minus the fee. | [optional] |
| **fee_cents** | **Integer** | Card fee. Once paid, the fee Stripe took (chargedCents minus netCents). Before, the fee charged on top, or null on an older top-up. 0 when Zernio covers it (&#x60;payout_batch&#x60;). | [optional] |
| **charged_cents** | **Integer** | What your card was charged: amountCents plus the card fee charged on top, or amountCents on an older top-up and on a &#x60;payout_batch&#x60; payment. | [optional] |
| **stripe_fee_cents** | **Integer** | feeCents once the top-up is paid; null before. Kept for older clients: read feeCents. | [optional] |
| **net_cents** | **Integer** | Amount credited to your balance, what Stripe delivered; null until paid. At least amountCents on a top-up that charged the fee on top, and amountCents on &#x60;payout_batch&#x60; payments. | [optional] |
| **status** | **String** | &#x60;pending&#x60; until the card is charged (or 3D Secure is finished) and credited. &#x60;expired&#x60; means it ended unpaid: cancelled, or 3D Secure left unfinished for 30 minutes. Only &#x60;pending&#x60; counts toward pendingTopupCents. | [optional] |
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
  fee_cents: null,
  charged_cents: null,
  stripe_fee_cents: null,
  net_cents: null,
  status: null,
  created_at: null,
  succeeded_at: null
)
```

