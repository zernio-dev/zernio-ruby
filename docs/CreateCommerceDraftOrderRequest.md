# Zernio::CreateCommerceDraftOrderRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected store SocialAccount id. |  |
| **customer_id** | **String** | The customer it is for, from the customers endpoints. | [optional] |
| **email** | **String** |  | [optional] |
| **line_items** | [**Array&lt;CreateCommerceDraftOrderRequestLineItemsInner&gt;**](CreateCommerceDraftOrderRequestLineItemsInner.md) | A product variant (variantId) or a custom item (title and price). |  |
| **discount** | [**CreateCommerceDraftOrderRequestDiscount**](CreateCommerceDraftOrderRequestDiscount.md) |  | [optional] |
| **shipping** | [**CreateCommerceDraftOrderRequestShipping**](CreateCommerceDraftOrderRequestShipping.md) |  | [optional] |
| **shipping_address** | [**CreateCommerceDraftOrderRequestShippingAddress**](CreateCommerceDraftOrderRequestShippingAddress.md) |  | [optional] |
| **note** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCommerceDraftOrderRequest.new(
  account_id: null,
  customer_id: null,
  email: null,
  line_items: null,
  discount: null,
  shipping: null,
  shipping_address: null,
  note: null,
  tags: null
)
```

