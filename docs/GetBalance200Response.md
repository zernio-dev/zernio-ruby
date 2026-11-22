# Zernio::GetBalance200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available_cents** | **Integer** | Your balance. It goes negative after a dispute or refund of funds already spent, or when pay-per-use already in flight lands past zero. The next funds you add cover it. New payout batches are refused while it is negative. | [optional] |
| **balance_billing** | **Boolean** | True when the account pays pay-per-use from this prepaid balance (new signups). Absent otherwise: that pay-per-use is on the monthly invoice. | [optional] |
| **spendable_cents** | **Integer** | Balance billing only (absent otherwise). What pay-per-use can still spend: availableCents plus promoCents plus bonusCents, minus usage not yet posted. At 0 or below, new pay-per-use answers 402 &#x60;insufficient_balance&#x60;. | [optional] |
| **promo_cents** | **Integer** | Balance billing only (absent otherwise). Promotional and support credit Zernio added to your balance. Pay-per-use spends it before availableCents. It is never paid out to payees and is not part of availableCents. | [optional] |
| **bonus_cents** | **Integer** | Balance billing only (absent otherwise). Bonus credit in the balance, usually 0. Pay-per-use spends it after availableCents. It is not cash, never paid out or refunded, and not part of availableCents. | [optional] |
| **held** | [**GetBalance200ResponseHeld**](GetBalance200ResponseHeld.md) |  | [optional] |
| **payout_locked_cents** | **Integer** | Always 0. The balance no longer pays creators, so none of it is locked from them. | [optional] |
| **payout_locks** | [**Array&lt;GetBalance200ResponsePayoutLocksInner&gt;**](GetBalance200ResponsePayoutLocksInner.md) | Always empty. The balance no longer pays creators. | [optional] |
| **pending_cents** | **Integer** | Card top-ups paid before 2026-10-29 that were held and are moving to availableCents (within the hour). Always 0 after that. | [optional] |
| **pending_releases** | [**Array&lt;GetBalance200ResponsePendingReleasesInner&gt;**](GetBalance200ResponsePendingReleasesInner.md) | The held card top-ups behind pendingCents. | [optional] |
| **pending_topup_cents** | **Integer** | Top-ups started but not paid yet. | [optional] |
| **currency** | **String** |  | [optional] |
| **recent_topups** | [**Array&lt;TreasuryTopup&gt;**](TreasuryTopup.md) |  | [optional] |
| **recent_credit_recharges** | [**Array&lt;GetBalance200ResponseRecentCreditRechargesInner&gt;**](GetBalance200ResponseRecentCreditRechargesInner.md) | Balance billing only (absent otherwise). The 10 newest auto top-ups paid from the account credit you held when you moved to the balance, newest first. Nothing was charged to your card and there is no invoice. The amount was added to promoCents with the credit&#39;s own expiry. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetBalance200Response.new(
  available_cents: null,
  balance_billing: null,
  spendable_cents: null,
  promo_cents: null,
  bonus_cents: null,
  held: null,
  payout_locked_cents: null,
  payout_locks: null,
  pending_cents: null,
  pending_releases: null,
  pending_topup_cents: null,
  currency: null,
  recent_topups: null,
  recent_credit_recharges: null
)
```

