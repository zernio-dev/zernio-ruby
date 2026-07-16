# Zernio::BoostPostRequestTargeting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **age_min** | **Integer** |  | [optional] |
| **age_max** | **Integer** |  | [optional] |
| **gender** | **String** | Meta only. | [optional] |
| **languages** | **Array&lt;String&gt;** | Meta locale ids (numeric), passed through as given. | [optional] |
| **countries** | **Array&lt;String&gt;** | ISO country codes. Required for TikTok boosts (TikTok&#39;s ad group requires location_ids); optional on other platforms. | [optional] |
| **regions** | [**Array&lt;BoostPostRequestTargetingRegionsInner&gt;**](BoostPostRequestTargetingRegionsInner.md) | Region/state targeting. &#x60;key&#x60; from /v1/ads/targeting/search?dimension&#x3D;geo&amp;geoType&#x3D;region. | [optional] |
| **cities** | [**Array&lt;BoostPostRequestTargetingCitiesInner&gt;**](BoostPostRequestTargetingCitiesInner.md) | City targeting. Optional &#x60;radius&#x60; + &#x60;distanceUnit&#x60; extend beyond the city limits (both set together, Meta only). | [optional] |
| **zips** | [**Array&lt;BoostPostRequestTargetingRegionsInner&gt;**](BoostPostRequestTargetingRegionsInner.md) | Postal/ZIP targeting. &#x60;key&#x60; is the platform&#39;s postal location ID (e.g. Meta &#x60;US:94304&#x60;). | [optional] |
| **metros** | [**Array&lt;BoostPostRequestTargetingRegionsInner&gt;**](BoostPostRequestTargetingRegionsInner.md) | DMA / metro-area targeting. &#x60;key&#x60; is the platform&#39;s metro ID (e.g. Meta &#x60;DMA:807&#x60;). | [optional] |
| **custom_locations** | [**Array&lt;BoostPostRequestTargetingCustomLocationsInner&gt;**](BoostPostRequestTargetingCustomLocationsInner.md) | Point-radius (lat/lng) targeting (Meta custom_locations). No geo &#x60;key&#x60; lookup needed. | [optional] |
| **interests** | [**Array&lt;UpdateAdRequestTargetingInterestsInner&gt;**](UpdateAdRequestTargetingInterestsInner.md) | Interest objects from /v1/ads/interests. Each must include id and name. | [optional] |
| **advantage_audience** | **Integer** | Meta only. 0 &#x3D; disabled (default), 1 &#x3D; enabled. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BoostPostRequestTargeting.new(
  age_min: null,
  age_max: null,
  gender: null,
  languages: null,
  countries: null,
  regions: null,
  cities: null,
  zips: null,
  metros: null,
  custom_locations: null,
  interests: null,
  advantage_audience: null
)
```

