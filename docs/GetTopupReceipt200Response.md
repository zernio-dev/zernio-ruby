# Zernio::GetTopupReceipt200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  |  |
| **format** | **String** |  |  |
| **invoice_url** | **String** | The invoice PDF; null when the payment made no invoice. | [optional] |
| **receipt_url** | **String** | Stripe&#39;s card receipt page for the charge. | [optional] |
| **amount_cents** | **Integer** | As in the top-up list. |  |
| **fee_cents** | **Integer** | Card fee paid, as in the top-up list. |  |
| **tax_cents** | **Integer** | Tax charged on top of amountCents, as in the top-up list. | [optional] |
| **charged_cents** | **Integer** | What the card was charged, tax included: the total on the receipt. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetTopupReceipt200Response.new(
  url: null,
  format: null,
  invoice_url: null,
  receipt_url: null,
  amount_cents: null,
  fee_cents: null,
  tax_cents: null,
  charged_cents: null
)
```

