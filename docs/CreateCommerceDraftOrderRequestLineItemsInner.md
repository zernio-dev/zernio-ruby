# Zernio::CreateCommerceDraftOrderRequestLineItemsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variant_id** | **String** |  | [optional] |
| **title** | **String** | Custom item only. | [optional] |
| **price** | **String** | Custom item only, in the store currency. | [optional] |
| **quantity** | **Integer** |  |  |
| **taxable** | **Boolean** | Custom item only. | [optional][default to true] |
| **requires_shipping** | **Boolean** | Custom item only. | [optional][default to true] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCommerceDraftOrderRequestLineItemsInner.new(
  variant_id: null,
  title: null,
  price: 25.00,
  quantity: null,
  taxable: null,
  requires_shipping: null
)
```

