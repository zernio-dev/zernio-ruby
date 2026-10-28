# Zernio::GetBalance200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available_cents** | **Integer** | Balance you can transfer now. Negative after a dispute or refund of a top-up that was already spent; transfers are refused while it is negative. | [optional] |
| **pending_cents** | **Integer** | Paid card top-ups still on hold. Card top-ups become available after 7 days. | [optional] |
| **pending_releases** | [**Array&lt;GetBalance200ResponsePendingReleasesInner&gt;**](GetBalance200ResponsePendingReleasesInner.md) | Card top-ups on hold, each with the time it becomes available. | [optional] |
| **pending_topup_cents** | **Integer** | Top-ups started but not paid yet. | [optional] |
| **currency** | **String** |  | [optional] |
| **recent_topups** | [**Array&lt;TreasuryTopup&gt;**](TreasuryTopup.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetBalance200Response.new(
  available_cents: null,
  pending_cents: null,
  pending_releases: null,
  pending_topup_cents: null,
  currency: null,
  recent_topups: null
)
```

