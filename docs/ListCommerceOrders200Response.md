# Zernio::ListCommerceOrders200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orders** | [**Array&lt;CommerceOrder&gt;**](CommerceOrder.md) |  | [optional] |
| **next_cursor** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListCommerceOrders200Response.new(
  orders: null,
  next_cursor: null
)
```

