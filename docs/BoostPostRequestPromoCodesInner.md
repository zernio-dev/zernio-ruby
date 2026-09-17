# Zernio::BoostPostRequestPromoCodesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **discount_type** | **String** |  |  |
| **discount_value** | **Float** | PERCENTAGE: integer 1-100. CASH: amount greater than 0 in discountCurrency. |  |
| **discount_currency** | **String** | ISO 4217; required for CASH. | [optional] |
| **promo_code** | **String** | Code entered at checkout; omit for an automatic offer. | [optional] |
| **minimum_purchase_type** | **String** |  | [optional] |
| **minimum_purchase_value** | **Float** | Required with minimumPurchaseType; QUANTITY is an integer &gt;&#x3D; 0, SUBTOTAL an amount &gt; 0. | [optional] |
| **minimum_purchase_currency** | **String** | ISO 4217; required for SUBTOTAL. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BoostPostRequestPromoCodesInner.new(
  discount_type: null,
  discount_value: null,
  discount_currency: null,
  promo_code: null,
  minimum_purchase_type: null,
  minimum_purchase_value: null,
  minimum_purchase_currency: null
)
```

