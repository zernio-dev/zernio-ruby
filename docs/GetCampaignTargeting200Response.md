# Zernio::GetCampaignTargeting200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **devices** | [**Array&lt;GetCampaignTargeting200ResponseDevicesInner&gt;**](GetCampaignTargeting200ResponseDevicesInner.md) |  | [optional] |
| **locations** | [**Array&lt;GetCampaignTargeting200ResponseLocationsInner&gt;**](GetCampaignTargeting200ResponseLocationsInner.md) |  | [optional] |
| **languages** | [**Array&lt;GetCampaignTargeting200ResponseLanguagesInner&gt;**](GetCampaignTargeting200ResponseLanguagesInner.md) |  | [optional] |
| **cached_at** | **Time** | When this targeting was fetched from Google. Null when it was never served from cache. | [optional] |
| **stale** | **Boolean** | True when Google&#39;s daily API quota was exhausted and this is the last successful fetch, not a live read. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetCampaignTargeting200Response.new(
  devices: null,
  locations: null,
  languages: null,
  cached_at: null,
  stale: null
)
```

