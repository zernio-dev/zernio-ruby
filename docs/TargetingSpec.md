# Zernio::TargetingSpec

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **countries** | **Array&lt;String&gt;** | ISO 3166-1 alpha-2 country codes (e.g. [&#39;US&#39;]). | [optional] |
| **regions** | [**Array&lt;BoostPostRequestTargetingRegionsInner&gt;**](BoostPostRequestTargetingRegionsInner.md) | Region/state targeting. &#x60;key&#x60; is the platform location ID from /v1/ads/targeting/search?dimension&#x3D;geo&amp;geoType&#x3D;region. | [optional] |
| **cities** | [**Array&lt;TargetingSpecCitiesInner&gt;**](TargetingSpecCitiesInner.md) | City targeting. Optional &#x60;radius&#x60; + &#x60;distanceUnit&#x60; extend beyond the city limits; both must be set together or both omitted. &#x60;radius&#x60; is only honoured on platforms whose capability map allows city radius (Meta). | [optional] |
| **zips** | [**Array&lt;BoostPostRequestTargetingRegionsInner&gt;**](BoostPostRequestTargetingRegionsInner.md) | Postal/ZIP targeting. &#x60;key&#x60; is the platform&#39;s postal location ID (e.g. Meta &#x60;US:94304&#x60;). Supported on Meta, Google, TikTok, Pinterest, X. | [optional] |
| **metros** | [**Array&lt;BoostPostRequestTargetingRegionsInner&gt;**](BoostPostRequestTargetingRegionsInner.md) | DMA / metro-area targeting. &#x60;key&#x60; is the platform&#39;s metro ID (e.g. Meta &#x60;DMA:807&#x60;). | [optional] |
| **custom_locations** | [**Array&lt;TargetingSpecCustomLocationsInner&gt;**](TargetingSpecCustomLocationsInner.md) | Point-radius (lat/lng) targeting (Meta custom_locations / Google proximity). Honoured on Meta and Google; ignored on platforms without radius support. | [optional] |
| **excluded_locations** | [**TargetingSpecExcludedLocations**](TargetingSpecExcludedLocations.md) |  | [optional] |
| **age_min** | **Integer** | Minimum age. Applied on Meta, TikTok and Pinterest; ignored on Google, LinkedIn and X. Each platform clamps to its own range: Meta and Pinterest effectively cap at 65 (65 &#x3D; 65+), TikTok maps up to 100. Pinterest has no under-18 bucket, so an ageMin below 18 starts at 18 there. | [optional] |
| **age_max** | **Integer** | Maximum age. Same per-platform application and clamping as ageMin. | [optional] |
| **gender** | **String** | Restrict by gender. &#39;all&#39; (default) targets everyone. Applied on Meta, TikTok and Pinterest. Ignored on Google, LinkedIn and X. | [optional] |
| **income_tier** | **String** | Normalized household-income tier (ZIP/percentile based). Meta and TikTok express all four. Google maps only &#x60;top_10&#x60; (its INCOME_RANGE_90_UP); other tiers on Google, and any income tier on LinkedIn / X / Pinterest, are rejected. On Meta, income/zip targeting requires the relevant &#x60;specialAdCategories&#x60; to be unset (housing/employment/credit ads cannot use it).  | [optional] |
| **languages** | **Array&lt;String&gt;** | Language codes restricting the audience by language. On Meta, ISO 639-1 codes (e.g. [&#39;en&#39;]); a bare code targets all regional variants (\&quot;en\&quot; &#x3D; all English), or use a region-qualified code (\&quot;en_GB\&quot;, \&quot;pt_BR\&quot;) for a specific one. Unknown codes are rejected. | [optional] |
| **interests** | [**Array&lt;CreateStandaloneAdRequestBehaviorsInner&gt;**](CreateStandaloneAdRequestBehaviorsInner.md) | Interest entities from /v1/ads/targeting/search?dimension&#x3D;interest. Each carries the platform&#39;s opaque id. | [optional] |
| **behaviors** | [**Array&lt;CreateStandaloneAdRequestBehaviorsInner&gt;**](CreateStandaloneAdRequestBehaviorsInner.md) | Behaviour entities from /v1/ads/targeting/search?dimension&#x3D;behavior. Supported on Meta and TikTok. | [optional] |
| **industries** | **Array&lt;String&gt;** | LinkedIn B2B only. Industry URN id fragments. | [optional] |
| **company_sizes** | **Array&lt;String&gt;** | LinkedIn B2B only. | [optional] |
| **seniorities** | **Array&lt;String&gt;** | LinkedIn B2B only. | [optional] |
| **job_functions** | **Array&lt;String&gt;** | LinkedIn B2B only. | [optional] |
| **audience_include** | **Array&lt;String&gt;** | Platform audience IDs to include. Not supported on any platform (no builder maps it): rejected with a 400 on ad create, boost, and reach estimate. | [optional] |
| **audience_exclude** | **Array&lt;String&gt;** | Platform audience IDs to exclude. Not supported on any platform (no builder maps it): rejected with a 400 on ad create, boost, and reach estimate. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TargetingSpec.new(
  countries: null,
  regions: null,
  cities: null,
  zips: null,
  metros: null,
  custom_locations: null,
  excluded_locations: null,
  age_min: null,
  age_max: null,
  gender: null,
  income_tier: null,
  languages: null,
  interests: null,
  behaviors: null,
  industries: null,
  company_sizes: null,
  seniorities: null,
  job_functions: null,
  audience_include: null,
  audience_exclude: null
)
```

