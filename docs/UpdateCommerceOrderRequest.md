# Zernio::UpdateCommerceOrderRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected store SocialAccount id. |  |
| **shipping_address** | [**UpdateCommerceOrderRequestShippingAddress**](UpdateCommerceOrderRequestShippingAddress.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateCommerceOrderRequest.new(
  account_id: null,
  shipping_address: null
)
```

