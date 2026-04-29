# Zernio::AdTreeAdSet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_ad_set_id** | **String** |  | [optional] |
| **ad_set_name** | **String** |  | [optional] |
| **status** | [**AdStatus**](AdStatus.md) | Derived from child ad statuses | [optional] |
| **ad_count** | **Integer** |  | [optional] |
| **budget** | [**AdTreeAdSetBudget**](AdTreeAdSetBudget.md) |  | [optional] |
| **ad_set_budget** | [**AdTreeAdSetAdSetBudget**](AdTreeAdSetAdSetBudget.md) |  | [optional] |
| **metrics** | [**AdMetrics**](AdMetrics.md) |  | [optional] |
| **optimization_goal** | **String** | Meta ad set optimization goal (e.g. OFFSITE_CONVERSIONS, VALUE, LEAD_GENERATION) | [optional] |
| **bid_strategy** | [**BidStrategy**](BidStrategy.md) | Bid strategy for this ad set (overrides campaign level when set) | [optional] |
| **bid_amount** | **Float** | Bid cap in whole currency units. Populated when bidStrategy is LOWEST_COST_WITH_BID_CAP or COST_CAP. | [optional] |
| **roas_average_floor** | **Float** | Minimum ROAS as a decimal multiplier (2.0 &#x3D; 2.0x). Populated when bidStrategy is LOWEST_COST_WITH_MIN_ROAS. | [optional] |
| **promoted_object** | [**AdTreeAdSetPromotedObject**](AdTreeAdSetPromotedObject.md) |  | [optional] |
| **ads** | [**Array&lt;Ad&gt;**](Ad.md) | Individual ads within this ad set (capped at 100). Returns a subset of Ad fields from the aggregation (core fields like _id, name, platform, status, budget, metrics, creative, goal are included; targeting and schedule may be absent). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdTreeAdSet.new(
  platform_ad_set_id: null,
  ad_set_name: null,
  status: null,
  ad_count: null,
  budget: null,
  ad_set_budget: null,
  metrics: null,
  optimization_goal: null,
  bid_strategy: null,
  bid_amount: null,
  roas_average_floor: null,
  promoted_object: null,
  ads: null
)
```

