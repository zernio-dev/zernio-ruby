# Zernio::CommerceOrderLineItemsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **product_id** | **String** | Null when the product was deleted. | [optional] |
| **variant_id** | **String** |  | [optional] |
| **sku** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **variant_title** | **String** |  | [optional] |
| **quantity** | **Integer** | As ordered; refunded units are listed under refunds. | [optional] |
| **unit_price** | [**CommerceMoney**](CommerceMoney.md) | Before discounts. | [optional] |
| **subtotal** | [**CommerceMoney**](CommerceMoney.md) | unitPrice x quantity. | [optional] |
| **discount_total** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **total** | [**CommerceMoney**](CommerceMoney.md) | subtotal minus discountTotal. | [optional] |
| **tax_lines** | [**Array&lt;CommerceTaxLine&gt;**](CommerceTaxLine.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceOrderLineItemsInner.new(
  id: null,
  product_id: null,
  variant_id: null,
  sku: null,
  title: null,
  variant_title: null,
  quantity: null,
  unit_price: null,
  subtotal: null,
  discount_total: null,
  total: null,
  tax_lines: null
)
```

