# Zernio::CommerceOrderChargeLine

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **amount** | [**CommerceMoney**](CommerceMoney.md) | Before discounts. | [optional] |
| **discount_total** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **tax_lines** | [**Array&lt;CommerceTaxLine&gt;**](CommerceTaxLine.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceOrderChargeLine.new(
  id: null,
  title: null,
  amount: null,
  discount_total: null,
  tax_lines: null
)
```

