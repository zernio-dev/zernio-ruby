# Zernio::TargetingSpecCitiesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **radius** | **Float** | Radius around the city. Requires distanceUnit. | [optional] |
| **distance_unit** | **String** | Required if radius is set. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TargetingSpecCitiesInner.new(
  key: null,
  name: null,
  radius: null,
  distance_unit: null
)
```

