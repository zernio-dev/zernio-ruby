# Zernio::CommerceOrderCustomer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Null for guest checkouts. | [optional] |
| **email** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceOrderCustomer.new(
  id: null,
  email: null,
  phone: null,
  first_name: null,
  last_name: null
)
```

