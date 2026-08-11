# Zernio::UpdateAdRequestTargeting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keywords** | [**Array&lt;UpdateAdRequestTargetingKeywordsInner&gt;**](UpdateAdRequestTargetingKeywordsInner.md) | Google only. The FULL new set of positive keywords for the ad group; live keywords not listed are removed. Entries are strings (BROAD) or { text, matchType } with matchType exact | phrase | broad. Mirrored to GET /v1/ads/keywords immediately. | [optional] |
| **negative_keywords** | [**Array&lt;UpdateAdRequestTargetingKeywordsInner&gt;**](UpdateAdRequestTargetingKeywordsInner.md) | Google only. Same declarative contract as keywords, for the ad group&#39;s negative keywords. | [optional] |
| **age_min** | **Integer** |  | [optional] |
| **age_max** | **Integer** |  | [optional] |
| **countries** | **Array&lt;String&gt;** |  | [optional] |
| **interests** | [**Array&lt;UpdateAdRequestTargetingInterestsInner&gt;**](UpdateAdRequestTargetingInterestsInner.md) | Interest objects from /v1/ads/interests. Each must include id and name. | [optional] |
| **advantage_audience** | **Integer** | Meta only. Omit to preserve the existing setting on update. 0 &#x3D; disabled, 1 &#x3D; enabled. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdRequestTargeting.new(
  keywords: null,
  negative_keywords: null,
  age_min: null,
  age_max: null,
  countries: null,
  interests: null,
  advantage_audience: null
)
```

