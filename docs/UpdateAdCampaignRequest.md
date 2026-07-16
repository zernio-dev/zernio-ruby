# Zernio::UpdateAdCampaignRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **budget** | [**UpdateAdCampaignRequestBudget**](UpdateAdCampaignRequestBudget.md) |  | [optional] |
| **bid_strategy** | [**BidStrategy**](BidStrategy.md) | Campaign-level default. Ad sets inherit this unless they override. | [optional] |
| **name** | **String** | Rename the campaign (Meta only; other platforms return 501). At least one of budget/bidStrategy/name/platformSpecificData is required. | [optional] |
| **platform_specific_data** | [**UpdateAdCampaignRequestPlatformSpecificData**](UpdateAdCampaignRequestPlatformSpecificData.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdCampaignRequest.new(
  platform: null,
  budget: null,
  bid_strategy: null,
  name: null,
  platform_specific_data: null
)
```

