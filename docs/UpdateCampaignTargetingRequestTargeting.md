# Zernio::UpdateCampaignTargetingRequestTargeting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **devices** | [**Array&lt;UpdateCampaignTargetingRequestTargetingDevicesInner&gt;**](UpdateCampaignTargetingRequestTargetingDevicesInner.md) | Devices to include. Devices not listed become excluded (negative) criteria, same contract as the existing devices-only edit. | [optional] |
| **locations** | [**UpdateCampaignTargetingRequestTargetingLocations**](UpdateCampaignTargetingRequestTargetingLocations.md) |  | [optional] |
| **languages** | **Array&lt;String&gt;** | Google&#39;s language codes (ISO 639-1, plus variants such as &#x60;zh_CN&#x60;), e.g. [\&quot;en\&quot;, \&quot;de\&quot;]. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateCampaignTargetingRequestTargeting.new(
  devices: null,
  locations: null,
  languages: null
)
```

