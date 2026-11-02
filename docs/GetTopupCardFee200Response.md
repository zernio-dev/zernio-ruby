# Zernio::GetTopupCardFee200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee_bps** | **Integer** | Percentage of the charge, in basis points (315 is 3.15%). |  |
| **fixed_cents** | **Integer** | Fixed part of the fee, in cents. |  |
| **fee_is_exact** | **Boolean** | True when this is exactly Stripe&#39;s rate for the card. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetTopupCardFee200Response.new(
  fee_bps: null,
  fixed_cents: null,
  fee_is_exact: null
)
```

