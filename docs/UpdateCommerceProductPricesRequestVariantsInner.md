# Zernio::UpdateCommerceProductPricesRequestVariantsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Variant id from the product response. |  |
| **price** | [**UpdateCommerceProductPricesRequestVariantsInnerPrice**](UpdateCommerceProductPricesRequestVariantsInnerPrice.md) |  | [optional] |
| **compare_at_price** | [**CreateCommerceProductRequestVariantsInnerCompareAtPrice**](CreateCommerceProductRequestVariantsInnerCompareAtPrice.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateCommerceProductPricesRequestVariantsInner.new(
  id: null,
  price: null,
  compare_at_price: null
)
```

