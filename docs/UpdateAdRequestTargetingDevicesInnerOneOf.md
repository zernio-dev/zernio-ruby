# Zernio::UpdateAdRequestTargetingDevicesInnerOneOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device** | **String** |  |  |
| **bid_modifier** | **Float** | Google device bid modifier. 0 switches the device off (minus 100%); otherwise 0.1 to 10 (minus 90% to plus 900%). Google rejects any value between 0 and 0.1. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdRequestTargetingDevicesInnerOneOf.new(
  device: null,
  bid_modifier: null
)
```

