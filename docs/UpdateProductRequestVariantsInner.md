# Zernio::UpdateProductRequestVariantsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Variant id from the product response. |  |
| **price** | [**UpdateProductRequestVariantsInnerPrice**](UpdateProductRequestVariantsInnerPrice.md) |  | [optional] |
| **compare_at_price** | [**UpdateProductRequestVariantsInnerCompareAtPrice**](UpdateProductRequestVariantsInnerCompareAtPrice.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateProductRequestVariantsInner.new(
  id: null,
  price: null,
  compare_at_price: null
)
```

