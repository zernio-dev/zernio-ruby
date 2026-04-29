# Zernio::AdCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_campaign_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **campaign_name** | **String** |  | [optional] |
| **status** | [**AdStatus**](AdStatus.md) | Delivery status derived from child ad statuses. Distinct from &#x60;reviewStatus&#x60;. | [optional] |
| **review_status** | **String** | Platform-side review state of the campaign. See AdTreeCampaign.reviewStatus for the full description. | [optional] |
| **platform_campaign_status** | **String** | Raw platform-level campaign status (Meta &#x60;effective_status&#x60;). | [optional] |
| **campaign_issues_info** | **Array&lt;Object&gt;** | Platform-reported campaign issues (Meta &#x60;issues_info[]&#x60;). | [optional] |
| **ad_count** | **Integer** |  | [optional] |
| **budget** | [**AdCampaignBudget**](AdCampaignBudget.md) |  | [optional] |
| **campaign_budget** | [**AdCampaignCampaignBudget**](AdCampaignCampaignBudget.md) |  | [optional] |
| **budget_level** | **String** | Canonical CBO/ABO indicator. See AdTreeCampaign.budgetLevel. | [optional] |
| **is_budget_schedule_enabled** | **Boolean** | Meta-only. Mirrors Campaign.is_budget_schedule_enabled. | [optional][default to false] |
| **currency** | **String** | ISO 4217 currency code for all budget amounts. Budgets are NOT normalized to USD. | [optional] |
| **metrics** | [**AdMetrics**](AdMetrics.md) |  | [optional] |
| **platform_ad_account_id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **platform_objective** | **String** | Raw Meta campaign objective (e.g. OUTCOME_SALES, OUTCOME_LEADS, OUTCOME_TRAFFIC) | [optional] |
| **optimization_goal** | **String** | Meta optimization goal shared across ad sets, or comma-separated values when ad sets differ (e.g. OFFSITE_CONVERSIONS, VALUE, LEAD_GENERATION) | [optional] |
| **bid_strategy** | [**BidStrategy**](BidStrategy.md) | Campaign-level bid strategy. Ad sets inherit this unless they override. | [optional] |
| **bid_amount** | **Float** | Representative bid cap from the top-spending ad set (whole currency units). Populated when bidStrategy is LOWEST_COST_WITH_BID_CAP or COST_CAP. | [optional] |
| **roas_average_floor** | **Float** | Representative ROAS floor from the top-spending ad set. Decimal multiplier (2.0 &#x3D; 2.0x). | [optional] |
| **promoted_object** | [**AdTreeCampaignPromotedObject**](AdTreeCampaignPromotedObject.md) |  | [optional] |
| **earliest_ad** | **Time** |  | [optional] |
| **latest_ad** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdCampaign.new(
  platform_campaign_id: null,
  platform: null,
  campaign_name: null,
  status: null,
  review_status: null,
  platform_campaign_status: null,
  campaign_issues_info: null,
  ad_count: null,
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
  bid_amount: null,
  roas_average_floor: null,
  promoted_object: null,
  earliest_ad: null,
  latest_ad: null
)
```

