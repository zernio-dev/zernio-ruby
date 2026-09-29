# Zernio::CommerceVariant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Platform-native variant id. | [optional] |
| **title** | **String** | Option combination label, e.g. \&quot;S / Blue\&quot;. | [optional] |
| **sku** | **String** |  | [optional] |
| **barcode** | **String** |  | [optional] |
| **price** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **compare_at_price** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **inventory_quantity** | **Integer** | Units on hand; null when inventory is not tracked. | [optional] |
| **available_for_sale** | **Boolean** |  | [optional] |
| **options** | [**Array&lt;CreateCommerceProductVariantsRequestVariantsInnerOptionsInner&gt;**](CreateCommerceProductVariantsRequestVariantsInnerOptionsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceVariant.new(
  id: null,
  title: null,
  sku: null,
  barcode: null,
  price: null,
  compare_at_price: null,
  inventory_quantity: null,
  available_for_sale: null,
  options: null
)
```

