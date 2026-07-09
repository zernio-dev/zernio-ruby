# Zernio::BillingSnapshotBalance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accrued_this_period_cents** | **Integer** |  | [optional] |
| **credits_remaining_cents** | **Integer** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BillingSnapshotBalance.new(
  accrued_this_period_cents: null,
  credits_remaining_cents: null
)
```

