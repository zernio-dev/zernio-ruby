# Zernio::PreviewTopup200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_cents** | **Integer** | Credited to your balance. |  |
| **tax_cents** | **Integer** | Tax added on top (VAT where it applies). |  |
| **total_cents** | **Integer** | What the card would be charged: amountCents + taxCents. |  |
| **tax_label** | **String** | The tax and its rate, for example \&quot;VAT 21%\&quot;. Null when no tax is charged. |  |
| **reverse_charge** | **Boolean** | True for an EU business with a valid VAT id: no VAT, reverse charge. |  |
| **country** | **String** | Two-letter country the tax was placed in, from the billing address. Null when Stripe Tax returned no address. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PreviewTopup200Response.new(
  amount_cents: null,
  tax_cents: null,
  total_cents: null,
  tax_label: null,
  reverse_charge: null,
  country: null
)
```

