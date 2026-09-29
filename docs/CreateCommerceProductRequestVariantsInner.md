# Zernio::CreateCommerceProductRequestVariantsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sku** | **String** |  | [optional] |
| **price** | [**CreateCommerceProductRequestVariantsInnerPrice**](CreateCommerceProductRequestVariantsInnerPrice.md) |  |  |
| **compare_at_price** | [**CreateCommerceProductRequestVariantsInnerCompareAtPrice**](CreateCommerceProductRequestVariantsInnerCompareAtPrice.md) |  | [optional] |
| **options** | [**Array&lt;CreateCommerceProductRequestVariantsInnerOptionsInner&gt;**](CreateCommerceProductRequestVariantsInnerOptionsInner.md) | One value per product option, e.g. [{ name: Size, value: M }]. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCommerceProductRequestVariantsInner.new(
  sku: null,
  price: null,
  compare_at_price: null,
  options: null
)
```

