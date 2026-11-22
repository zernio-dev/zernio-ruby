# Zernio::CancelCommerceOrder200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order** | [**CommerceOrder**](CommerceOrder.md) |  | [optional] |
| **cancelled** | **Boolean** | True: the cancel finished. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CancelCommerceOrder200Response.new(
  order: null,
  cancelled: null
)
```

