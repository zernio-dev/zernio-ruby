# Zernio::TargetingSpecExcludedLocationsCitiesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** |  |  |
| **radius** | **Float** | Radius around the excluded city. Requires distanceUnit. | [optional] |
| **distance_unit** | **String** | Required if radius is set. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TargetingSpecExcludedLocationsCitiesInner.new(
  key: null,
  radius: null,
  distance_unit: null
)
```

