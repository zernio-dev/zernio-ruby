# Zernio::GetCampaignTargeting200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **devices** | [**Array&lt;GetCampaignTargeting200ResponseDevicesInner&gt;**](GetCampaignTargeting200ResponseDevicesInner.md) |  | [optional] |
| **locations** | [**Array&lt;GetCampaignTargeting200ResponseLocationsInner&gt;**](GetCampaignTargeting200ResponseLocationsInner.md) |  | [optional] |
| **excluded_locations** | [**Array&lt;GetCampaignTargeting200ResponseExcludedLocationsInner&gt;**](GetCampaignTargeting200ResponseExcludedLocationsInner.md) | The negative (excluded) location criteria, same item shape as &#x60;locations&#x60; with &#x60;negative: true&#x60;. | [optional] |
| **excluded_locations_editable** | **Boolean** | Whether PUT accepts &#x60;excludedLocations&#x60; for this campaign. False on Demand Gen, which returns 400 for any exclusion. | [optional] |
| **languages** | [**Array&lt;GetCampaignTargeting200ResponseLanguagesInner&gt;**](GetCampaignTargeting200ResponseLanguagesInner.md) |  | [optional] |
| **location_targeting_type** | **String** | Who the location targeting reaches, see GoogleLocationTargetingType. Null when Google reports a legacy value (SEARCH_INTEREST) this API does not set. | [optional] |
| **cached_at** | **Time** | When this targeting was fetched from Google. Null when it was never served from cache. | [optional] |
| **stale** | **Boolean** | True when Google&#39;s daily API quota was exhausted and this is the last successful fetch, not a live read. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetCampaignTargeting200Response.new(
  devices: null,
  locations: null,
  excluded_locations: null,
  excluded_locations_editable: null,
  languages: null,
  location_targeting_type: null,
  cached_at: null,
  stale: null
)
```

