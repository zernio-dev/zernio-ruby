# Zernio::CommerceOrderEditPreviewLineItemsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **line_item_id** | **String** | Null for a line the edit adds. | [optional] |
| **variant_id** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **quantity** | **Integer** |  | [optional] |
| **unit_price** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceOrderEditPreviewLineItemsInner.new(
  line_item_id: null,
  variant_id: null,
  title: null,
  quantity: null,
  unit_price: null
)
```

