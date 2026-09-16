# Zernio::ProductVariant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Platform-native variant id (numeric string for Shopify). | [optional] |
| **title** | **String** | Option combination label, e.g. \&quot;S / Blue\&quot;. | [optional] |
| **sku** | **String** |  | [optional] |
| **barcode** | **String** |  | [optional] |
| **price** | **String** | Decimal amount in the store currency, e.g. \&quot;19.90\&quot;. | [optional] |
| **compare_at_price** | **String** | Strike-through price; null when the variant is not on sale. | [optional] |
| **inventory_quantity** | **Integer** | Units on hand across locations; null when inventory is not tracked. | [optional] |
| **available_for_sale** | **Boolean** |  | [optional] |
| **selected_options** | [**Array&lt;ProductVariantSelectedOptionsInner&gt;**](ProductVariantSelectedOptionsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ProductVariant.new(
  id: null,
  title: null,
  sku: null,
  barcode: null,
  price: null,
  compare_at_price: null,
  inventory_quantity: null,
  available_for_sale: null,
  selected_options: null
)
```

