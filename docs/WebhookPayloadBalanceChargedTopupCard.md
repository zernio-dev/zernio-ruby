# Zernio::WebhookPayloadBalanceChargedTopupCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **brand** | **String** | Card brand as Stripe names it, e.g. visa or mastercard. |  |
| **last4** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadBalanceChargedTopupCard.new(
  brand: null,
  last4: null
)
```

