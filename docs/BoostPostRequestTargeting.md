# Zernio::BoostPostRequestTargeting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **age_min** | **Integer** |  | [optional] |
| **age_max** | **Integer** |  | [optional] |
| **countries** | **Array&lt;String&gt;** | ISO country codes. Required for TikTok boosts (TikTok&#39;s ad group requires location_ids); optional on other platforms. | [optional] |
| **interests** | [**Array&lt;UpdateAdRequestTargetingInterestsInner&gt;**](UpdateAdRequestTargetingInterestsInner.md) | Interest objects from /v1/ads/interests. Each must include id and name. | [optional] |
| **advantage_audience** | **Integer** | Meta only. 0 &#x3D; disabled (default), 1 &#x3D; enabled. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BoostPostRequestTargeting.new(
  age_min: null,
  age_max: null,
  countries: null,
  interests: null,
  advantage_audience: null
)
```

