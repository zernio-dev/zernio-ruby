# Zernio::SendInboxMessageRequestLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **latitude** | **Float** | Latitude in decimal degrees. |  |
| **longitude** | **Float** | Longitude in decimal degrees. |  |
| **name** | **String** | Optional location name. | [optional] |
| **address** | **String** | Optional street address. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendInboxMessageRequestLocation.new(
  latitude: null,
  longitude: null,
  name: null,
  address: null
)
```

