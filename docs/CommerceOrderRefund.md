# Zernio::CommerceOrderRefund

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **note** | **String** |  | [optional] |
| **amount** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **line_items** | [**Array&lt;CommerceOrderRefundLineItemsInner&gt;**](CommerceOrderRefundLineItemsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceOrderRefund.new(
  id: null,
  created_at: null,
  note: null,
  amount: null,
  line_items: null
)
```

