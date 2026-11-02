# Zernio::GetTopupReceipt200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  |  |
| **format** | **String** |  |  |
| **amount_cents** | **Integer** | As in the top-up list. |  |
| **fee_cents** | **Integer** | Card fee paid, as in the top-up list. |  |
| **charged_cents** | **Integer** | What the card was charged, the total on the receipt. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetTopupReceipt200Response.new(
  url: null,
  format: null,
  amount_cents: null,
  fee_cents: null,
  charged_cents: null
)
```

