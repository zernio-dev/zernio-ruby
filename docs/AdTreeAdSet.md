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
| **optimization_goal** | **String** | What the delivery system optimizes for. Meta ad set optimization goal (e.g. OFFSITE_CONVERSIONS, VALUE, LEAD_GENERATION), or on LinkedIn the campaign&#39;s effective optimizationTargetType (NONE means manual bidding). See the &#x60;optimizationGoal&#x60; field on &#x60;Ad&#x60; for the full value spaces. | [optional] |
| **bid_strategy** | [**BidStrategy**](BidStrategy.md) |  | [optional] |
| **bid_amount** | **Float** | Bid amount in whole currency units. On Meta/TikTok populated when bidStrategy is LOWEST_COST_WITH_BID_CAP or COST_CAP; on LinkedIn it is the campaign&#39;s effective unitCost and pairs with &#x60;costType&#x60;, where 0 is a real, delivery-stopping value. | [optional] |
| **roas_average_floor** | **Float** | Minimum ROAS as a decimal multiplier (2.0 &#x3D; 2.0x). Populated when bidStrategy is LOWEST_COST_WITH_MIN_ROAS. | [optional] |
| **cost_type** | **String** | LinkedIn only. Effective cost model (billing event) of the LinkedIn campaign backing this ad set: CPM, CPC or CPV. Null for non-LinkedIn ad sets. | [optional] |
| **serving_statuses** | **Array&lt;String&gt;** | LinkedIn only. Why the LinkedIn campaign backing this ad set is (or is not) delivering. A LinkedIn Campaign maps to this ad-set node, so this is the level where LinkedIn&#39;s holds actually apply. Empty means no serving data, [\&quot;RUNNABLE\&quot;] means eligible to serve, anything else is a hold. See the &#x60;servingStatuses&#x60; field on &#x60;Ad&#x60; for the known values. | [optional] |
| **promoted_object** | [**AdTreeAdSetPromotedObject**](AdTreeAdSetPromotedObject.md) |  | [optional] |
| **ads** | [**Array&lt;Ad&gt;**](Ad.md) | Individual ads within this ad set (capped at 100). Returns a subset of Ad fields from the aggregation (core fields like _id, name, platform, status, budget, metrics, creative, goal are included; targeting and schedule may be absent). When &#x60;timeIncrement&#x3D;1&amp;dailyLevel&#x3D;ad&#x60;, each entry also carries a &#x60;daily[]&#x60; array of &#x60;AdDailyMetrics&#x60;. | [optional] |
| **daily** | [**Array&lt;AdDailyMetrics&gt;**](AdDailyMetrics.md) | Per-day metric series for this ad set. Present only when &#x60;GET /v1/ads/tree&#x60; is called with &#x60;timeIncrement&#x3D;1&#x60; and &#x60;dailyLevel&#x60; is &#x60;adset&#x60; or &#x60;ad&#x60;. | [optional] |

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
  cost_type: null,
  serving_statuses: [RUNNABLE],
  promoted_object: null,
  ads: null,
  daily: null
)
```

