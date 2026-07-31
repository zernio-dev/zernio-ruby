# Zernio::UpdateAdCampaignRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id owning the ad account. Required only to update an EMPTY campaign (zero ads), which has no local Ad documents to resolve a token from. | [optional] |
| **platform** | **String** |  |  |
| **budget** | [**UpdateAdCampaignRequestBudget**](UpdateAdCampaignRequestBudget.md) |  | [optional] |
| **bid_strategy** | [**BidStrategy**](BidStrategy.md) | Campaign-level default. Ad sets inherit this unless they override. | [optional] |
| **name** | **String** | Rename the campaign (Meta only; other platforms return 501). At least one of budget/bidStrategy/name/platformSpecificData is required. | [optional] |
| **platform_specific_data** | [**UpdateAdCampaignRequestPlatformSpecificData**](UpdateAdCampaignRequestPlatformSpecificData.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdCampaignRequest.new(
  account_id: null,
  platform: null,
  budget: null,
  bid_strategy: null,
  name: null,
  platform_specific_data: null
)
```

