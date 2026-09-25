# Zernio::UpdateCampaignTargeting200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** |  | [optional] |
| **updated** | **Array&lt;String&gt;** | Which targeting fields were applied. | [optional] |
| **location_targeting_type** | **String** | The value read back from Google after the edit. | [optional] |
| **devices** | [**Array&lt;UpdateCampaignTargeting200ResponseDevicesInner&gt;**](UpdateCampaignTargeting200ResponseDevicesInner.md) |  | [optional] |
| **locations** | [**Array&lt;UpdateCampaignTargeting200ResponseLocationsInner&gt;**](UpdateCampaignTargeting200ResponseLocationsInner.md) |  | [optional] |
| **languages** | [**Array&lt;UpdateCampaignTargeting200ResponseLanguagesInner&gt;**](UpdateCampaignTargeting200ResponseLanguagesInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateCampaignTargeting200Response.new(
  campaign_id: null,
  updated: null,
  location_targeting_type: null,
  devices: null,
  locations: null,
  languages: null
)
```

