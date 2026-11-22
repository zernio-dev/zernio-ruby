# Zernio::ListCommerceCustomers200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customers** | [**Array&lt;CommerceCustomer&gt;**](CommerceCustomer.md) |  | [optional] |
| **next_cursor** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListCommerceCustomers200Response.new(
  customers: null,
  next_cursor: null
)
```

