# Late::BoostPostRequestTargeting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **age_min** | **Integer** |  | [optional] |
| **age_max** | **Integer** |  | [optional] |
| **countries** | **Array&lt;String&gt;** |  | [optional] |
| **interests** | [**Array&lt;UpdateAdRequestTargetingInterestsInner&gt;**](UpdateAdRequestTargetingInterestsInner.md) | Interest objects from /v1/ads/interests. Each must include id and name. | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::BoostPostRequestTargeting.new(
  age_min: null,
  age_max: null,
  countries: null,
  interests: null
)
```

