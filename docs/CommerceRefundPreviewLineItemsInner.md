# Zernio::CommerceRefundPreviewLineItemsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **line_item_id** | **String** |  | [optional] |
| **quantity** | **Integer** |  | [optional] |
| **restock** | **String** |  | [optional] |
| **amount** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceRefundPreviewLineItemsInner.new(
  line_item_id: null,
  quantity: null,
  restock: null,
  amount: null
)
```

