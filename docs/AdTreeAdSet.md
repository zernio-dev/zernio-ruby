# Late::AdTreeAdSet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_ad_set_id** | **String** |  | [optional] |
| **ad_set_name** | **String** |  | [optional] |
| **status** | **String** | Derived from child ad statuses | [optional] |
| **ad_count** | **Integer** |  | [optional] |
| **budget** | [**AdBudget**](AdBudget.md) |  | [optional] |
| **metrics** | [**AdMetrics**](AdMetrics.md) |  | [optional] |
| **ads** | [**Array&lt;Ad&gt;**](Ad.md) | Individual ads within this ad set (capped at 100). Returns a subset of Ad fields from the aggregation (core fields like _id, name, platform, status, budget, metrics, creative, goal are included; targeting and schedule may be absent). | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::AdTreeAdSet.new(
  platform_ad_set_id: null,
  ad_set_name: null,
  status: null,
  ad_count: null,
  budget: null,
  metrics: null,
  ads: null
)
```

