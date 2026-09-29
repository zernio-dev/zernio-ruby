# Zernio::CreateCommerceProductVariantsRequestVariantsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sku** | **String** |  | [optional] |
| **price** | [**UpdateCommerceProductPricesRequestVariantsInnerPrice**](UpdateCommerceProductPricesRequestVariantsInnerPrice.md) |  |  |
| **compare_at_price** | [**CreateCommerceProductRequestVariantsInnerCompareAtPrice**](CreateCommerceProductRequestVariantsInnerCompareAtPrice.md) |  | [optional] |
| **options** | [**Array&lt;CreateCommerceProductVariantsRequestVariantsInnerOptionsInner&gt;**](CreateCommerceProductVariantsRequestVariantsInnerOptionsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCommerceProductVariantsRequestVariantsInner.new(
  sku: null,
  price: null,
  compare_at_price: null,
  options: null
)
```

