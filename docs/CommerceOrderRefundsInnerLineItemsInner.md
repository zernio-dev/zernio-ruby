# Zernio::CommerceOrderRefundsInnerLineItemsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **line_item_id** | **String** |  | [optional] |
| **quantity** | **Integer** |  | [optional] |
| **amount** | [**CommerceMoney**](CommerceMoney.md) | Before tax. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceOrderRefundsInnerLineItemsInner.new(
  line_item_id: null,
  quantity: null,
  amount: null
)
```

