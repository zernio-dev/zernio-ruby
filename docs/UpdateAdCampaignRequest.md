# Zernio::UpdateAdCampaignRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | Required: platform campaign IDs are not globally unique. |  |
| **account_id** | **String** | **Meta only.** Zernio SocialAccount id owning the ad account. Needed only for an EMPTY campaign (zero ads); ignored otherwise. | [optional] |
| **bid_strategy** | [**BidStrategy**](BidStrategy.md) | **Meta + Google.** On Meta, the campaign default that ad sets inherit unless they override it. On Google, the campaign&#39;s own bidding strategy. | [optional] |
| **bid_amount** | **Float** | **Google only.** Whole currency units (USD: 12 &#x3D; $12.00). Max CPC for LOWEST_COST_WITH_BID_CAP, CPA target for COST_CAP; required for both. | [optional] |
| **roas_average_floor** | **Float** | **Google only.** Decimal ROAS multiplier (2.0 &#x3D; 2.0x), required for LOWEST_COST_WITH_MIN_ROAS. | [optional] |
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
  budget: null,
  name: null,
  platform_specific_data: null
)
```

