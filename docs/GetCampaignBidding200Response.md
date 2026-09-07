# Zernio::GetCampaignBidding200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel** | **String** | campaign.advertising_channel_type. COST_CAP&#39;s underlying Google field differs by channel; see bidStrategy on PUT. | [optional] |
| **bidding_strategy_type** | **String** | Google&#39;s raw enum: MAXIMIZE_CONVERSIONS, TARGET_CPA, MAXIMIZE_CONVERSION_VALUE, TARGET_ROAS, TARGET_SPEND, MANUAL_CPC, TARGET_IMPRESSION_SHARE, or another Google adds later. | [optional] |
| **bid_spec** | [**CampaignBiddingBidSpec**](CampaignBiddingBidSpec.md) |  | [optional] |
| **portfolio** | [**CampaignBiddingPortfolio**](CampaignBiddingPortfolio.md) |  | [optional] |
| **campaign_id** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetCampaignBidding200Response.new(
  channel: null,
  bidding_strategy_type: null,
  bid_spec: null,
  portfolio: null,
  campaign_id: null
)
```

