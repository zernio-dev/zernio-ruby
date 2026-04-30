# Zernio::CreateStandaloneAdRequestCitiesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Meta city ID, from /v1/ads/targeting/search results. |  |
| **radius** | **Float** | Optional radius around the city. Must be set together with distance_unit. | [optional] |
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

