# Zernio::GetBalance200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available_cents** | **Integer** | Your balance, including card top-ups paid in the last 7 days (see payoutLockedCents). Negative after a dispute or refund of a top-up that was already spent; transfers are refused while it is negative. | [optional] |
| **payout_locked_cents** | **Integer** | Part of availableCents from card top-ups charged in the last 7 days, net of refunds and disputes. Transfers to payees cannot use it yet; a transfer that needs it answers 409 &#x60;payout_funds_locked&#x60; with the day it can be sent. | [optional] |
| **payout_locks** | [**Array&lt;GetBalance200ResponsePayoutLocksInner&gt;**](GetBalance200ResponsePayoutLocksInner.md) | The card top-ups behind payoutLockedCents, soonest first. | [optional] |
| **pending_cents** | **Integer** | Card top-ups paid before 2026-10-29 that were held and are moving to availableCents (within the hour). Always 0 after that. | [optional] |
| **pending_releases** | [**Array&lt;GetBalance200ResponsePendingReleasesInner&gt;**](GetBalance200ResponsePendingReleasesInner.md) | The held card top-ups behind pendingCents. | [optional] |
| **pending_topup_cents** | **Integer** | Top-ups started but not paid yet. | [optional] |
| **currency** | **String** |  | [optional] |
| **recent_topups** | [**Array&lt;TreasuryTopup&gt;**](TreasuryTopup.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetBalance200Response.new(
  available_cents: null,
  payout_locked_cents: null,
  payout_locks: null,
  pending_cents: null,
  pending_releases: null,
  pending_topup_cents: null,
  currency: null,
  recent_topups: null
)
```

