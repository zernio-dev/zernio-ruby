# Zernio::GetLinkedInSupplyForecastRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **ad_account_id** | **String** |  |  |
| **spec** | [**TargetingSpec**](TargetingSpec.md) |  |  |
| **campaign_type** | **String** | Defaults to SPONSORED_UPDATES. | [optional] |
| **time_range_start** | **Integer** | Unix ms. Must be in the future. |  |
| **time_range_end** | **Integer** | Unix ms. Must be after start and within LinkedIn&#39;s max horizon. |  |
| **objective_type** | **String** |  | [optional] |
| **optimization_target** | **String** | When set, the forecast assumes auto-bidding. When unset, competingBid is required. | [optional] |
| **daily_budget** | **Float** | Either dailyBudget or totalBudget is required. | [optional] |
| **total_budget** | **Float** |  | [optional] |
| **currency** | **String** | ISO 4217, defaults to USD. | [optional] |
| **competing_bid** | [**GetLinkedInSupplyForecastRequestCompetingBid**](GetLinkedInSupplyForecastRequestCompetingBid.md) |  | [optional] |
| **enable_audience_network** | **Boolean** | Defaults to false. Required true for connectedTelevisionOnly. | [optional] |
| **enable_audience_expansion** | **Boolean** | Defaults to false. | [optional] |
| **connected_television_only** | **Boolean** | Defaults to false. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetLinkedInSupplyForecastRequest.new(
  account_id: null,
  ad_account_id: null,
  spec: null,
  campaign_type: null,
  time_range_start: null,
  time_range_end: null,
  objective_type: null,
  optimization_target: null,
  daily_budget: null,
  total_budget: null,
  currency: null,
  competing_bid: null,
  enable_audience_network: null,
  enable_audience_expansion: null,
  connected_television_only: null
)
```

