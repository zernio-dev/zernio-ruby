# Zernio::CommerceOrderRefundsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **note** | **String** |  | [optional] |
| **amount** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **line_items** | [**Array&lt;CommerceOrderRefundsInnerLineItemsInner&gt;**](CommerceOrderRefundsInnerLineItemsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceOrderRefundsInner.new(
  id: null,
  created_at: null,
  note: null,
  amount: null,
  line_items: null
)
```

