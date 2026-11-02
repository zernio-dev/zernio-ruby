# Zernio::CreateTopup201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **topup_id** | **String** |  |  |
| **amount_cents** | **Integer** | Credited to your balance once paid: exactly this when feeIsExact, else at least this. |  |
| **fee_cents** | **Integer** | Card fee, charged on top of amountCents. |  |
| **charged_cents** | **Integer** | What the card is charged: amountCents plus feeCents. |  |
| **fee_is_exact** | **Boolean** | True when feeCents is exactly Stripe&#39;s fee for this card. False when it is the region&#39;s highest rate, so Stripe may take less and the difference is added to your balance. |  |
| **status** | **String** |  |  |
| **client_secret** | **String** | PaymentIntent client secret for Stripe.js handleNextAction; set only when status is requires_action |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateTopup201Response.new(
  topup_id: null,
  amount_cents: null,
  fee_cents: null,
  charged_cents: null,
  fee_is_exact: null,
  status: null,
  client_secret: null
)
```

