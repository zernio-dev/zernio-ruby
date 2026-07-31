# Zernio::CreateAdCampaignRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token. |  |
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;). |  |
| **name** | **String** |  |  |
| **goal** | **String** | Mapped to the ODAX objective (same mapping as POST /v1/ads/create). |  |
| **special_ad_categories** | **Array&lt;String&gt;** |  | [optional] |
| **budget_amount** | **Float** | Campaign-level (CBO) budget in whole currency units. Requires budgetType. | [optional] |
| **budget_type** | **String** |  | [optional] |
| **status** | **String** |  | [optional][default to &#39;PAUSED&#39;] |
| **bid_strategy** | **String** | Campaign bid strategy. Meta puts &#x60;bid_strategy&#x60; where the budget lives, so this applies only alongside a campaign budget (CBO). Previously settable only via &#x60;PUT /v1/ads/campaigns/{campaignId}&#x60;. | [optional] |
| **bid_amount** | **Float** | Whole currency units (USD: 5 &#x3D; $5.00). Required for LOWEST_COST_WITH_BID_CAP and COST_CAP; ignored otherwise. | [optional] |
| **roas_average_floor** | **Float** | Decimal ROAS multiplier (2.0 &#x3D; 2.0x). Required for LOWEST_COST_WITH_MIN_ROAS. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateAdCampaignRequest.new(
  account_id: null,
  ad_account_id: null,
  name: null,
  goal: null,
  special_ad_categories: null,
  budget_amount: null,
  budget_type: null,
  status: null,
  bid_strategy: null,
  bid_amount: null,
  roas_average_floor: null
)
```

