# Zernio::CreateStandaloneAdRequestCitiesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Meta city ID, from /v1/ads/targeting/search results. |  |
| **radius** | **Float** | Optional radius around the city. Must be set together with distance_unit. Meta enforces a minimum city radius (~17 km / 10 mi); smaller values resolve to a 0-size audience and the ad fails at launch. For a tighter catchment use customLocations (lat/lng). | [optional] |
| **distance_unit** | **String** | Unit for radius. Required if radius is set. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateStandaloneAdRequestCitiesInner.new(
  key: null,
  radius: null,
  distance_unit: null
)
```

