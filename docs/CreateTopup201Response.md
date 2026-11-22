# Zernio::CreateTopup201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **topup_id** | **String** |  |  |
| **amount_cents** | **Integer** | Credited to your balance once paid. |  |
| **tax_cents** | **Integer** | Tax added on top of amountCents (VAT where it applies). 0 when reverse charged or outside the EU. |  |
| **total_cents** | **Integer** | What the card is charged: amountCents + taxCents. |  |
| **tax_label** | **String** | The tax and its rate, for example \&quot;VAT 21%\&quot;. Null when no tax is charged. |  |
| **reverse_charge** | **Boolean** | True for an EU business whose VAT id VIES confirms: no VAT is charged and the invoice says reverse charge (inversión del sujeto pasivo). |  |
| **fee_cents** | **Integer** | Always 0: there is no card fee. Kept for older clients. |  |
| **charged_cents** | **Integer** | Same as totalCents. Kept for older clients. |  |
| **fee_is_exact** | **Boolean** | Always true. Kept for older clients. |  |
| **status** | **String** |  |  |
| **client_secret** | **String** | PaymentIntent client secret for Stripe.js handleNextAction; set only when status is requires_action |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateTopup201Response.new(
  topup_id: null,
  amount_cents: null,
  tax_cents: null,
  total_cents: null,
  tax_label: null,
  reverse_charge: null,
  fee_cents: null,
  charged_cents: null,
  fee_is_exact: null,
  status: null,
  client_secret: null
)
```

