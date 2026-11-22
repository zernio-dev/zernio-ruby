# Zernio::PreviewCampaignPayoutBatch200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payout_count** | **Integer** | Creators who would be paid. |  |
| **amount_cents** | **Integer** | Total the creators receive. |  |
| **fee_cents** | **Integer** | Zernio fee: 4%, 50 cents minimum per payout. |  |
| **tax_cents** | **Integer** | VAT on the fee, 0 when none applies. |  |
| **total_cents** | **Integer** | What the card would be charged: amountCents + feeCents + taxCents. |  |
| **tax_label** | **String** | For example \&quot;VAT 21%\&quot;. Null when there is no tax. |  |
| **reverse_charge** | **Boolean** | The fee is reverse charged: you account for the VAT. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PreviewCampaignPayoutBatch200Response.new(
  payout_count: null,
  amount_cents: null,
  fee_cents: null,
  tax_cents: null,
  total_cents: null,
  tax_label: null,
  reverse_charge: null
)
```

