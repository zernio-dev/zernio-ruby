# Zernio::UpdateAdCampaignRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | Required: platform campaign IDs are not globally unique. |  |
| **account_id** | **String** | **Meta only.** Zernio SocialAccount id owning the ad account. Needed only for an EMPTY campaign (zero ads); ignored otherwise. | [optional] |
| **bid_strategy** | [**BidStrategy**](BidStrategy.md) | **Meta + Google.** On Meta, the campaign default that ad sets inherit unless they override it. On Google, the campaign&#39;s own bidding strategy. On Google: LOWEST_COST_WITHOUT_CAP &#x3D; Maximize Conversions, COST_CAP + bidAmount &#x3D; Target CPA, LOWEST_COST_WITH_MIN_ROAS + roasAverageFloor &#x3D; Target ROAS, LOWEST_COST_WITH_BID_CAP + bidAmount &#x3D; Maximize Clicks with a CPC ceiling; portfolioBidStrategyId attaches a portfolio strategy instead. | [optional] |
| **bid_amount** | **Float** | **Google only.** Whole currency units (USD: 12 &#x3D; $12.00). Max CPC for LOWEST_COST_WITH_BID_CAP, CPA target for COST_CAP; required for both. | [optional] |
| **roas_average_floor** | **Float** | **Google only.** Decimal ROAS multiplier (2.0 &#x3D; 2.0x), required for LOWEST_COST_WITH_MIN_ROAS. | [optional] |
| **portfolio_bid_strategy_id** | **String** | **Google only.** Attach an existing portfolio bid strategy (numeric id from GET /v1/ads/bid-strategies) instead of setting bidStrategy. Exclusive with bidStrategy. | [optional] |
| **allow_shared_budget_update** | **Boolean** | Google only. Explicitly allow changing a shared campaign budget (flagged as shared by Google, or used by more than one campaign), affecting every campaign that uses it. Does not bypass an unknown sharing state. Also required to move a campaign onto a shared budget with sharedBudgetId. | [optional][default to false] |
| **target_impression_share** | [**GoogleTargetImpressionShare**](GoogleTargetImpressionShare.md) | Google Search only. Target impression share bidding. Exclusive with bidStrategy, portfolioBidStrategyId and manualCpc; bidAmount is refused alongside it (the ceiling is maxCpc). | [optional] |
| **manual_cpc** | [**GoogleManualCpc**](GoogleManualCpc.md) |  | [optional] |
| **network_settings** | [**GoogleNetworkSettings**](GoogleNetworkSettings.md) |  | [optional] |
| **tracking_url_template** | **String** | **Google only.** campaign.tracking_url_template; an empty string clears it. | [optional] |
| **final_url_suffix** | **String** | **Google only.** campaign.final_url_suffix; an empty string clears it. | [optional] |
| **shared_budget_id** | **String** | **Google only.** Move the campaign onto this shared budget (id from GET /v1/ads/shared-budgets), or null to move it back onto a budget of its own sized by &#x60;budget&#x60;. | [optional] |
| **budget** | [**UpdateAdCampaignRequestBudget**](UpdateAdCampaignRequestBudget.md) |  | [optional] |
| **name** | **String** | **Meta only.** Rename the campaign. | [optional] |
| **platform_specific_data** | [**UpdateAdCampaignRequestPlatformSpecificData**](UpdateAdCampaignRequestPlatformSpecificData.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdCampaignRequest.new(
  platform: null,
  account_id: null,
  bid_strategy: null,
  bid_amount: null,
  roas_average_floor: null,
  portfolio_bid_strategy_id: null,
  allow_shared_budget_update: null,
  target_impression_share: null,
  manual_cpc: null,
  network_settings: null,
  tracking_url_template: null,
  final_url_suffix: null,
  shared_budget_id: null,
  budget: null,
  name: null,
  platform_specific_data: null
)
```

