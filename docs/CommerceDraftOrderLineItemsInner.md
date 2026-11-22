# Zernio::CommerceDraftOrderLineItemsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **product_id** | **String** |  | [optional] |
| **variant_id** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **variant_title** | **String** |  | [optional] |
| **sku** | **String** |  | [optional] |
| **quantity** | **Integer** |  | [optional] |
| **unit_price** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **total** | [**CommerceMoney**](CommerceMoney.md) | After the line discount. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceDraftOrderLineItemsInner.new(
  id: null,
  product_id: null,
  variant_id: null,
  title: null,
  variant_title: null,
  sku: null,
  quantity: null,
  unit_price: null,
  total: null
)
```

