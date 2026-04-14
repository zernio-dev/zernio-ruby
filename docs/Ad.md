# Late::Ad

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **status** | [**AdStatus**](AdStatus.md) |  | [optional] |
| **ad_type** | **String** |  | [optional] |
| **goal** | **String** |  | [optional] |
| **is_external** | **Boolean** | True for ads synced from platform ad managers | [optional] |
| **budget** | [**AdBudget**](AdBudget.md) |  | [optional] |
| **metrics** | [**AdMetrics**](AdMetrics.md) |  | [optional] |
| **platform_ad_id** | **String** |  | [optional] |
| **platform_ad_account_id** | **String** |  | [optional] |
| **platform_campaign_id** | **String** |  | [optional] |
| **platform_ad_set_id** | **String** |  | [optional] |
| **campaign_name** | **String** |  | [optional] |
| **ad_set_name** | **String** |  | [optional] |
| **platform_objective** | **String** | Raw Meta campaign objective (e.g. OUTCOME_SALES, OUTCOME_LEADS, OUTCOME_TRAFFIC). Only present for Meta ads. | [optional] |
| **optimization_goal** | **String** | Meta ad set optimization goal (e.g. OFFSITE_CONVERSIONS, VALUE, LEAD_GENERATION, LINK_CLICKS). Only present for Meta ads. | [optional] |
| **bid_strategy** | **String** | Bid strategy (e.g. LOWEST_COST_WITHOUT_CAP, COST_CAP, LOWEST_COST_WITH_MIN_ROAS). Ad set level overrides campaign level. Only present for Meta ads. | [optional] |
| **promoted_object** | [**AdPromotedObject**](AdPromotedObject.md) |  | [optional] |
| **creative** | [**AdCreative**](AdCreative.md) |  | [optional] |
| **targeting** | **Object** |  | [optional] |
| **schedule** | [**AdSchedule**](AdSchedule.md) |  | [optional] |
| **rejection_reason** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::Ad.new(
  _id: null,
  name: null,
  platform: null,
  status: null,
  ad_type: null,
  goal: null,
  is_external: null,
  budget: null,
  metrics: null,
  platform_ad_id: null,
  platform_ad_account_id: null,
  platform_campaign_id: null,
  platform_ad_set_id: null,
  campaign_name: null,
  ad_set_name: null,
  platform_objective: OUTCOME_SALES,
  optimization_goal: OFFSITE_CONVERSIONS,
  bid_strategy: LOWEST_COST_WITHOUT_CAP,
  promoted_object: null,
  creative: null,
  targeting: null,
  schedule: null,
  rejection_reason: null,
  created_at: null,
  updated_at: null
)
```

