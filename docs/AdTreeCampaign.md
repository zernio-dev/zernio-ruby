# Late::AdTreeCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_campaign_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **campaign_name** | **String** |  | [optional] |
| **status** | **String** | Derived from child ad statuses | [optional] |
| **ad_count** | **Integer** | Total ads across all ad sets | [optional] |
| **ad_set_count** | **Integer** |  | [optional] |
| **budget** | [**AdBudget**](AdBudget.md) |  | [optional] |
| **metrics** | [**AdMetrics**](AdMetrics.md) |  | [optional] |
| **platform_ad_account_id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **platform_objective** | **String** | Raw Meta campaign objective (e.g. OUTCOME_SALES, OUTCOME_LEADS, OUTCOME_TRAFFIC) | [optional] |
| **optimization_goal** | [**AdTreeCampaignOptimizationGoal**](AdTreeCampaignOptimizationGoal.md) |  | [optional] |
| **bid_strategy** | **String** | Campaign-level bid strategy (e.g. LOWEST_COST_WITHOUT_CAP, COST_CAP, LOWEST_COST_WITH_MIN_ROAS) | [optional] |
| **promoted_object** | [**AdTreeCampaignPromotedObject**](AdTreeCampaignPromotedObject.md) |  | [optional] |
| **ad_sets** | [**Array&lt;AdTreeAdSet&gt;**](AdTreeAdSet.md) |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::AdTreeCampaign.new(
  platform_campaign_id: null,
  platform: null,
  campaign_name: null,
  status: null,
  ad_count: null,
  ad_set_count: null,
  budget: null,
  metrics: null,
  platform_ad_account_id: null,
  account_id: null,
  profile_id: null,
  platform_objective: null,
  optimization_goal: null,
  bid_strategy: null,
  promoted_object: null,
  ad_sets: null
)
```

