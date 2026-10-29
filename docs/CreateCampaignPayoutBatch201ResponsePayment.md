# Zernio::CreateCampaignPayoutBatch201ResponsePayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  |  |
| **client_secret** | **String** | PaymentIntent client secret for Stripe.js handleNextAction; set only when status is requires_action |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCampaignPayoutBatch201ResponsePayment.new(
  status: null,
  client_secret: null
)
```

