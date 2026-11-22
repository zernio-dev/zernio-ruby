# Zernio::TreasuryTopup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **method** | **String** |  | [optional] |
| **purpose** | **String** | &#x60;balance&#x60; funds your balance; &#x60;payout_batch&#x60; is the card payment of one payout batch, which pays its creators directly. | [optional] |
| **payout_batch** | [**TreasuryTopupPayoutBatch**](TreasuryTopupPayoutBatch.md) |  | [optional] |
| **fee_covered_by_zernio** | **Boolean** | True for a balance top-up (there is no card fee) and a &#x60;payout_batch&#x60; payment: Zernio pays the Stripe processing fee, so you are credited the whole charge. False on a top-up made before 2026-11-05. | [optional] |
| **amount_cents** | **Integer** | The amount you asked for. A top-up credits exactly this and charges it plus tax (taxCents). Top-ups from 2026-11-02 to 2026-11-05 charged a card fee on top and credited what Stripe delivered; older ones charged this amount and credited it minus the fee. | [optional] |
| **fee_cents** | **Integer** | Card fee you paid: 0 when Zernio covers it (feeCoveredByZernio). On an older top-up, the fee Stripe took once paid, the fee charged on top before, or null. | [optional] |
| **tax_cents** | **Integer** | Tax charged on top of amountCents once paid (VAT where it applies, since 2026-11-05); 0 before payment, when reverse charged, outside the EU, and on older top-ups. | [optional] |
| **charged_cents** | **Integer** | What your card was charged: amountCents plus taxCents, or amountCents plus the card fee on a top-up from 2026-11-02 to 2026-11-05. | [optional] |
| **stripe_fee_cents** | **Integer** | feeCents once the top-up is paid; null before. Kept for older clients: read feeCents. | [optional] |
| **net_cents** | **Integer** | Amount credited to your balance; null until paid. amountCents when feeCoveredByZernio; on an older top-up, what Stripe delivered. | [optional] |
| **status** | **String** | &#x60;pending&#x60; until the card is charged (or 3D Secure is finished) and credited. &#x60;expired&#x60; means it ended unpaid: cancelled, or 3D Secure left unfinished for 30 minutes. Only &#x60;pending&#x60; counts toward pendingTopupCents. | [optional] |
| **created_at** | **Time** |  | [optional] |
| **succeeded_at** | **Time** |  | [optional] |
| **has_invoice** | **Boolean** | The paid payment has an invoice (getTopupInvoice): every balance top-up paid since 2026-11-05 (unless charged without one for a Stripe credit balance), and Checkout payments before 2026-10-29. Every paid payment has a card receipt (getTopupReceipt). | [optional] |
| **bonus_cents** | **Integer** | Bonus credit added with this payment and not taken back, in cents. Null when there is none. | [optional] |

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
  tax_cents: null,
  charged_cents: null,
  stripe_fee_cents: null,
  net_cents: null,
  status: null,
  created_at: null,
  succeeded_at: null,
  has_invoice: null,
  bonus_cents: null
)
```

