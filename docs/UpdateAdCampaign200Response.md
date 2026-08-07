# Zernio::UpdateAdCampaign200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **updated** | **Integer** | Local Ad documents mirrored. 0 on the empty-campaign path. | [optional] |
| **budget** | [**AdBudget**](AdBudget.md) |  | [optional] |
| **budget_level** | **String** |  | [optional] |
| **bid_strategy** | [**BidStrategy**](BidStrategy.md) |  | [optional] |
| **bid_amount** | **Float** |  | [optional] |
| **roas_average_floor** | **Float** |  | [optional] |
| **platform_specific_data** | **Object** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdCampaign200Response.new(
  updated: null,
  budget: null,
  budget_level: null,
  bid_strategy: null,
  bid_amount: null,
  roas_average_floor: null,
  platform_specific_data: null
)
```

