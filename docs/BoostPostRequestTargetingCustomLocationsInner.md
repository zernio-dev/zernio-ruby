# Zernio::BoostPostRequestTargetingCustomLocationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **latitude** | **Float** |  |  |
| **longitude** | **Float** |  |  |
| **radius** | **Float** |  |  |
| **distance_unit** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **address** | **String** | Optional label, sent to Meta as &#x60;address_string&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BoostPostRequestTargetingCustomLocationsInner.new(
  latitude: null,
  longitude: null,
  radius: null,
  distance_unit: null,
  name: null,
  address: null
)
```

