# Late::UpdateAdRequestTargeting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **age_min** | **Integer** |  | [optional] |
| **age_max** | **Integer** |  | [optional] |
| **countries** | **Array&lt;String&gt;** |  | [optional] |
| **interests** | [**Array&lt;UpdateAdRequestTargetingInterestsInner&gt;**](UpdateAdRequestTargetingInterestsInner.md) | Interest objects from /v1/ads/interests. Each must include id and name. | [optional] |
| **advantage_audience** | **Integer** | Meta only. Omit to preserve the existing setting on update. 0 &#x3D; disabled, 1 &#x3D; enabled. | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::UpdateAdRequestTargeting.new(
  age_min: null,
  age_max: null,
  countries: null,
  interests: null,
  advantage_audience: null
)
```

