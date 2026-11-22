# Zernio::CommerceRefundPreview

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **maximum_refundable** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **subtotal** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **tax** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **shipping** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **line_items** | [**Array&lt;CommerceRefundPreviewLineItemsInner&gt;**](CommerceRefundPreviewLineItemsInner.md) |  | [optional] |
| **transactions** | [**Array&lt;CommerceRefundPreviewTransactionsInner&gt;**](CommerceRefundPreviewTransactionsInner.md) | The payments the money goes back to. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceRefundPreview.new(
  amount: null,
  maximum_refundable: null,
  subtotal: null,
  tax: null,
  shipping: null,
  line_items: null,
  transactions: null
)
```

