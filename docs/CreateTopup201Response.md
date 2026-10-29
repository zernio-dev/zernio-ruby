# Zernio::CreateTopup201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **topup_id** | **String** |  |  |
| **status** | **String** |  |  |
| **client_secret** | **String** | PaymentIntent client secret for Stripe.js handleNextAction; set only when status is requires_action |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateTopup201Response.new(
  topup_id: null,
  status: null,
  client_secret: null
)
```

