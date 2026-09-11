# Zernio::GetCampaignTargeting200ResponseDevicesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device** | **String** |  | [optional] |
| **included** | **Boolean** |  | [optional] |
| **bid_modifier** | **Float** | Google&#39;s bid adjustment for this device: null when it has none, 0 when the device is switched off, otherwise 0.1 to 10. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetCampaignTargeting200ResponseDevicesInner.new(
  device: null,
  included: null,
  bid_modifier: null
)
```

