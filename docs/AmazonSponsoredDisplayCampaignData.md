# Zernio::AmazonSponsoredDisplayCampaignData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_product** | **String** |  |  |
| **tactic** | **String** | Required for a new campaign. T00020 targets products and categories; T00030 also targets audiences (views, purchases, audience). | [optional] |
| **portfolio_id** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AmazonSponsoredDisplayCampaignData.new(
  ad_product: null,
  tactic: null,
  portfolio_id: null
)
```

