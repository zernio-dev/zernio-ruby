# Zernio::UpdateAdCampaignRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **budget** | [**UpdateAdCampaignRequestBudget**](UpdateAdCampaignRequestBudget.md) |  | [optional] |
| **bid_strategy** | [**BidStrategy**](BidStrategy.md) | Campaign-level default. Ad sets inherit this unless they override. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdCampaignRequest.new(
  platform: null,
  budget: null,
  bid_strategy: null
)
```

