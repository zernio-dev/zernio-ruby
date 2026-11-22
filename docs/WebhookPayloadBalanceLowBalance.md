# Zernio::WebhookPayloadBalanceLowBalance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **spendable_cents** | **Integer** | What pay-per-use can spend, in USD cents: available plus promo, less usage not posted yet. |  |
| **alert_below_cents** | **Integer** | The low-balance alert threshold it dropped below, in USD cents. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadBalanceLowBalance.new(
  spendable_cents: null,
  alert_below_cents: null
)
```

