# Zernio::GetLinkedInBidPricingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio social account ID (LinkedIn). |  |
| **ad_account_id** | **String** | LinkedIn ad account ID (numeric). |  |
| **spec** | [**TargetingSpec**](TargetingSpec.md) | Same targeting spec used by POST /v1/ads/create. |  |
| **campaign_type** | **String** | Defaults to SPONSORED_UPDATES. | [optional] |
| **bid_type** | **String** | Defaults to CPM. | [optional] |
| **match_type** | **String** | Defaults to EXACT. | [optional] |
| **currency** | **String** | ISO 4217, defaults to USD. | [optional] |
| **objective_type** | **String** | LinkedIn objectiveType, e.g. WEBSITE_VISIT, LEAD_GENERATION, VIDEO_VIEW. | [optional] |
| **optimization_target_type** | **String** | LinkedIn optimizationTargetType, e.g. MAX_CLICK, MAX_IMPRESSION. | [optional] |
| **daily_budget** | **Float** | Optional daily budget in whole account-currency units. LinkedIn refines the suggested bid to this budget. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetLinkedInBidPricingRequest.new(
  account_id: null,
  ad_account_id: null,
  spec: null,
  campaign_type: null,
  bid_type: null,
  match_type: null,
  currency: null,
  objective_type: null,
  optimization_target_type: null,
  daily_budget: null
)
```

