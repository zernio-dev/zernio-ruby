# Zernio::CampaignBiddingBidSpec

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bid_strategy** | [**BidStrategy**](BidStrategy.md) |  | [optional] |
| **bid_amount** | **Float** | Whole currency units. Present for COST_CAP and LOWEST_COST_WITH_BID_CAP, and omitted when the campaign is on a bare TARGET_SPEND with no CPC ceiling set. | [optional] |
| **roas_average_floor** | **Float** | Decimal ROAS multiplier (2.0 &#x3D; 2.0x). Present for LOWEST_COST_WITH_MIN_ROAS. | [optional] |
| **portfolio_bid_strategy_id** | **String** | Present alone (bidStrategy omitted) when the campaign is on a portfolio strategy; see portfolio. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CampaignBiddingBidSpec.new(
  bid_strategy: null,
  bid_amount: null,
  roas_average_floor: null,
  portfolio_bid_strategy_id: null
)
```

