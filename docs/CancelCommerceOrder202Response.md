# Zernio::CancelCommerceOrder202Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order** | [**CommerceOrder**](CommerceOrder.md) |  | [optional] |
| **cancelled** | **Boolean** | False: the platform is still cancelling. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CancelCommerceOrder202Response.new(
  order: null,
  cancelled: null
)
```

