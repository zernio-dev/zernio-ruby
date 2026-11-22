# Zernio::GetTopupInvoice200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  |  |
| **format** | **String** |  |  |
| **pdf_url** | **String** | The invoice PDF. |  |
| **page_url** | **String** | The invoice&#39;s Stripe-hosted page. |  |
| **amount_cents** | **Integer** | Amount added to your balance, as in the top-up list. |  |
| **tax_cents** | **Integer** | Tax charged on top of amountCents. |  |
| **charged_cents** | **Integer** | What the card was charged, tax included. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetTopupInvoice200Response.new(
  url: null,
  format: null,
  pdf_url: null,
  page_url: null,
  amount_cents: null,
  tax_cents: null,
  charged_cents: null
)
```

