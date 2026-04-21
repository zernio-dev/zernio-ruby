# Late::AdTreeCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_campaign_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **campaign_name** | **String** |  | [optional] |
| **status** | [**AdStatus**](AdStatus.md) | Delivery status derived from child ad statuses. Distinct from &#x60;reviewStatus&#x60;, which reflects the platform-side review state. | [optional] |
| **review_status** | **String** | Platform-side review state of the campaign. Independent of the children-derived delivery &#x60;status&#x60;: a campaign can have ads already active (status&#x3D;active) while the campaign itself is still being reviewed by the platform (reviewStatus&#x3D;in_review). For Meta, derived from &#x60;effective_status&#x60; + &#x60;issues_info&#x60; on the Campaign, plus ad-level PENDING_REVIEW rollup.  | [optional] |
| **platform_campaign_status** | **String** | Raw platform-level campaign status (Meta &#x60;effective_status&#x60;: ACTIVE, PAUSED, DELETED, ARCHIVED, IN_PROCESS, WITH_ISSUES). Distinct from per-ad &#x60;platformStatus&#x60;. | [optional] |
| **campaign_issues_info** | **Array&lt;Object&gt;** | Platform-reported campaign issues (Meta &#x60;issues_info[]&#x60;). Populated only when the platform has delivery issues to report; contains the specific error codes and messages. | [optional] |
| **ad_count** | **Integer** | Total ads across all ad sets | [optional] |
| **ad_set_count** | **Integer** |  | [optional] |
| **budget** | [**AdTreeCampaignBudget**](AdTreeCampaignBudget.md) |  | [optional] |
| **campaign_budget** | [**AdTreeCampaignCampaignBudget**](AdTreeCampaignCampaignBudget.md) |  | [optional] |
| **budget_level** | **String** | Canonical CBO/ABO indicator. &#x60;campaign&#x60; &#x3D; CBO (Advantage Campaign Budget, budget lives on the campaign). &#x60;adset&#x60; &#x3D; ABO (budget lives on each ad set). Route budget updates to the matching Meta entity. | [optional] |
| **is_budget_schedule_enabled** | **Boolean** | Meta-only. Mirrors Campaign.is_budget_schedule_enabled — true when the campaign uses budget scheduling (time-based budget changes). Independent of CBO/ABO. | [optional][default to false] |
| **currency** | **String** | ISO 4217 currency code (e.g. USD, EUR, CLP, JPY) for all budget amounts in this campaign node. Budgets are NOT normalized to USD. | [optional] |
| **metrics** | [**AdMetrics**](AdMetrics.md) |  | [optional] |
| **platform_ad_account_id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **platform_objective** | **String** | Raw Meta campaign objective (e.g. OUTCOME_SALES, OUTCOME_LEADS, OUTCOME_TRAFFIC) | [optional] |
| **optimization_goal** | **String** | Meta optimization goal shared across ad sets, or comma-separated values when ad sets differ (e.g. OFFSITE_CONVERSIONS, VALUE, LEAD_GENERATION) | [optional] |
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
  review_status: null,
  platform_campaign_status: null,
  campaign_issues_info: null,
  ad_count: null,
  ad_set_count: null,
  budget: null,
  campaign_budget: null,
  budget_level: null,
  is_budget_schedule_enabled: null,
  currency: null,
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

