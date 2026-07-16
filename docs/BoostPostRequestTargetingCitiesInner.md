# Zernio::BoostPostRequestTargetingCitiesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **radius** | **Float** | Requires distanceUnit. Meta enforces a minimum city radius (~17 km / 10 mi); smaller values resolve to a 0-size audience and the ad fails at launch. For a tighter catchment use customLocations (lat/lng). | [optional] |
| **distance_unit** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BoostPostRequestTargetingCitiesInner.new(
  key: null,
  name: null,
  radius: null,
  distance_unit: null
)
```

