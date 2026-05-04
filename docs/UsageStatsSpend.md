# Zernio::UsageStatsSpend

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_period_cents** | **Integer** | Total current-period spend in cents (all products combined). | [optional] |
| **credits_remaining_cents** | **Integer** | Free-tier credit remaining in cents. Applied before any charge. | [optional] |
| **x_spend_cents** | **Integer** | Current-period X/Twitter API spend in cents, derived from the per-tier call counts. Rounded up for conservative enforcement against &#x60;xSpendLimitCents&#x60;.  | [optional] |
| **x_spend_limit_cents** | **Integer** | Monthly X spend cap set by the account owner, or null if no cap. When current X spend hits this cap, analytics and inbox sync are auto-paused for X accounts. Publishing is never blocked by this cap.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UsageStatsSpend.new(
  current_period_cents: null,
  credits_remaining_cents: null,
  x_spend_cents: null,
  x_spend_limit_cents: null
)
```

