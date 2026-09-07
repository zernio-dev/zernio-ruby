# Zernio::UpdateAdRequestTargetingDevicesInnerOneOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device** | **String** |  |  |
| **bid_modifier** | **Float** | Google device bid modifier, 0.1 to 10 (minus 90% to plus 900%). Omit a device to exclude it. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdRequestTargetingDevicesInnerOneOf.new(
  device: null,
  bid_modifier: null
)
```

