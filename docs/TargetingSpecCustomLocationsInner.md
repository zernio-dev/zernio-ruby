# Zernio::TargetingSpecCustomLocationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **latitude** | **Float** |  |  |
| **longitude** | **Float** |  |  |
| **radius** | **Float** | Positive radius around the point. |  |
| **distance_unit** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **address** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TargetingSpecCustomLocationsInner.new(
  latitude: null,
  longitude: null,
  radius: null,
  distance_unit: null,
  name: null,
  address: null
)
```

