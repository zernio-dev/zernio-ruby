# Zernio::UpdateAdRequestTargetingLocationsOneOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **countries** | **Array&lt;String&gt;** |  | [optional] |
| **regions** | [**Array&lt;UpdateCampaignTargetingRequestTargetingLocationsOneOfRegionsInnerOneOf&gt;**](UpdateCampaignTargetingRequestTargetingLocationsOneOfRegionsInnerOneOf.md) |  | [optional] |
| **cities** | [**Array&lt;UpdateCampaignTargetingRequestTargetingLocationsOneOfRegionsInnerOneOf&gt;**](UpdateCampaignTargetingRequestTargetingLocationsOneOfRegionsInnerOneOf.md) |  | [optional] |
| **zips** | [**Array&lt;UpdateCampaignTargetingRequestTargetingLocationsOneOfRegionsInnerOneOf&gt;**](UpdateCampaignTargetingRequestTargetingLocationsOneOfRegionsInnerOneOf.md) |  | [optional] |
| **metros** | [**Array&lt;UpdateCampaignTargetingRequestTargetingLocationsOneOfRegionsInnerOneOf&gt;**](UpdateCampaignTargetingRequestTargetingLocationsOneOfRegionsInnerOneOf.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdRequestTargetingLocationsOneOf.new(
  countries: null,
  regions: null,
  cities: null,
  zips: null,
  metros: null
)
```

