# Zernio::GoogleDemandGenInputAudience

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_lists** | **Array&lt;String&gt;** |  | [optional] |
| **user_interests** | **Array&lt;String&gt;** |  | [optional] |
| **custom_audiences** | **Array&lt;String&gt;** |  | [optional] |
| **age_ranges** | [**Array&lt;GoogleDemandGenInputAudienceAgeRangesInner&gt;**](GoogleDemandGenInputAudienceAgeRangesInner.md) |  | [optional] |
| **genders** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleDemandGenInputAudience.new(
  user_lists: null,
  user_interests: null,
  custom_audiences: null,
  age_ranges: null,
  genders: null
)
```

