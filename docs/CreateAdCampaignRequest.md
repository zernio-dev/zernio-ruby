# Zernio::CreateAdCampaignRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token. |  |
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;). |  |
| **name** | **String** |  |  |
| **goal** | **String** | Mapped to the ODAX objective (same mapping as POST /v1/ads/create). |  |
| **special_ad_categories** | **Array&lt;String&gt;** |  | [optional] |
| **budget_amount** | **Float** | Campaign-level (CBO) budget in WHOLE currency units (USD: 50 &#x3D; $50.00), NOT cents — Meta&#39;s own Marketing API takes this same number in minor units, so it is an easy and expensive mix-up. Requires budgetType. | [optional] |
| **budget_type** | **String** |  | [optional] |
| **status** | **String** |  | [optional][default to &#39;PAUSED&#39;] |
| **bid_strategy** | **String** | Campaign bid strategy. Meta stores &#x60;bid_strategy&#x60; alongside the budget, so this REQUIRES &#x60;budgetAmount&#x60; + &#x60;budgetType&#x60; on the same request; sending it without a campaign budget is a 400. A campaign carrying a strategy without its &#x60;bid_amount&#x60; makes every ad set created under it fail with an error that names the ad set (code 100, subcode 1815857), so the bad state is rejected up front rather than accepted. To bid at ad-set level, set the strategy there instead. | [optional] |
| **bid_amount** | **Float** | Whole currency units (USD: 5 &#x3D; $5.00). Required for LOWEST_COST_WITH_BID_CAP and COST_CAP; ignored otherwise. Validated here but NOT stored by Meta: the campaign object has no bid_amount field, only bid_strategy lives on it. The amount takes effect once an ad set joins this campaign (existingCampaignId on POST /v1/ads/create) and supplies its own bidAmount there. | [optional] |
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

