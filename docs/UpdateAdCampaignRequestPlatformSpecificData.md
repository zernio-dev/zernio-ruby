# Zernio::UpdateAdCampaignRequestPlatformSpecificData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **spend_cap** | **Float** | Campaign lifetime spend cap, in the ad account&#39;s currency (Meta &#x60;spend_cap&#x60;). Pass null to remove the cap (0 is rejected by Meta). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdCampaignRequestPlatformSpecificData.new(
  spend_cap: null
)
```

