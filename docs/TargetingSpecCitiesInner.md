# Zernio::TargetingSpecCitiesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **radius** | **Float** | Radius around the city. Requires distanceUnit. Meta enforces a minimum city radius (~17 km / 10 mi); smaller values resolve to a 0-size audience and the ad fails at launch. For a tighter catchment use customLocations (lat/lng), which allows a smaller radius. | [optional] |
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

