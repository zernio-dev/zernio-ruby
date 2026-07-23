# Zernio::UpdateAdSetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **budget** | [**UpdateAdSetRequestBudget**](UpdateAdSetRequestBudget.md) |  | [optional] |
| **status** | **String** | Omit if not toggling delivery state | [optional] |
| **name** | **String** | Rename the ad set (Meta only; other platforms return 501). At least one of budget/status/bidStrategy/name is required. | [optional] |
| **bid_strategy** | [**BidStrategy**](BidStrategy.md) | Ad-set-level bid strategy. Overrides the campaign-level default. Supported on Meta (facebook, instagram), TikTok, and OpenAI. On TikTok the Meta-style enum is mapped to bid_type / bid_price / deep_bid_type automatically. On OpenAI, LOWEST_COST_WITH_BID_CAP and COST_CAP both map to the ad group&#39;s &#x60;bidding_config.max_bid_micros&#x60; (one knob covers both); LOWEST_COST_WITH_MIN_ROAS is rejected with 422 (OpenAI has no ROAS-based bidding). Other platforms (linkedin, pinterest, google, twitter) return 501 Not Implemented when bidStrategy is set.  | [optional] |
| **bid_amount** | **Float** | Bid cap in WHOLE currency units (USD: 5 &#x3D; $5.00; JPY: 100 &#x3D; ¥100). Required when bidStrategy is LOWEST_COST_WITH_BID_CAP or COST_CAP. Internally converted to Meta&#39;s smallest-denomination integer, or (on OpenAI) to micros (× 1,000,000).  | [optional] |
| **roas_average_floor** | **Float** | Minimum ROAS as a decimal multiplier (2.0 &#x3D; 2.0x). Required when bidStrategy is LOWEST_COST_WITH_MIN_ROAS. Sent to Meta as &#x60;bid_constraints.roas_average_floor&#x60; × 10000. Not supported on OpenAI (422).  | [optional] |
| **platform_specific_data** | [**UpdateAdSetRequestPlatformSpecificData**](UpdateAdSetRequestPlatformSpecificData.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdSetRequest.new(
  platform: null,
  budget: null,
  status: null,
  name: null,
  bid_strategy: null,
  bid_amount: null,
  roas_average_floor: null,
  platform_specific_data: null
)
```

