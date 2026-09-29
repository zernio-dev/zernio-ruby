# Zernio::CommerceLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **is_active** | **Boolean** |  | [optional] |
| **fulfills_online_orders** | **Boolean** |  | [optional] |
| **address** | [**CommerceLocationAddress**](CommerceLocationAddress.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceLocation.new(
  id: null,
  name: null,
  is_active: null,
  fulfills_online_orders: null,
  address: null
)
```

