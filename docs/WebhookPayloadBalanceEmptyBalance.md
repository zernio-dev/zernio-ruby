# Zernio::WebhookPayloadBalanceEmptyBalance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **spendable_cents** | **Integer** | What pay-per-use can spend, in USD cents: 0 or below (usage already in flight can take it under 0). |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadBalanceEmptyBalance.new(
  spendable_cents: null
)
```

