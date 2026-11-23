# Zernio::AmazonSponsoredBrandsCampaignData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_product** | **String** |  |  |
| **brand_entity_id** | **String** | The brand (Brand Registry entity) the campaign advertises. Sellers need one. | [optional] |
| **bid_optimization** | **Boolean** | Amazon adjusts placement bids itself. Send false to set placementAdjustments. | [optional][default to true] |
| **placement_adjustments** | [**Array&lt;AmazonSponsoredBrandsCampaignDataPlacementAdjustmentsInner&gt;**](AmazonSponsoredBrandsCampaignDataPlacementAdjustmentsInner.md) | Only with bidOptimization false (400 otherwise). | [optional] |
| **portfolio_id** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AmazonSponsoredBrandsCampaignData.new(
  ad_product: null,
  brand_entity_id: null,
  bid_optimization: null,
  placement_adjustments: null,
  portfolio_id: null
)
```

