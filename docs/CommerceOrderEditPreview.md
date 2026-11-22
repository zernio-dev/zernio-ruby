# Zernio::CommerceOrderEditPreview

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subtotal** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **total** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **outstanding** | [**CommerceMoney**](CommerceMoney.md) | What the buyer still owes. Negative when the edit leaves them overpaid: refund that with the refunds endpoint. | [optional] |
| **line_items** | [**Array&lt;CommerceOrderEditPreviewLineItemsInner&gt;**](CommerceOrderEditPreviewLineItemsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceOrderEditPreview.new(
  subtotal: null,
  total: null,
  outstanding: null,
  line_items: null
)
```

