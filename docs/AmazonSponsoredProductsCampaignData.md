# Zernio::AmazonSponsoredProductsCampaignData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_product** | **String** |  |  |
| **targeting_type** | **String** | Required for a new campaign. MANUAL targets keywords and productTargets; AUTO lets Amazon match searches and products (tune them with autoTargeting). Immutable. | [optional] |
| **bidding_strategy** | **String** | Dynamic bidding: LEGACY_FOR_SALES lowers bids when a sale is unlikely, AUTO_FOR_SALES raises and lowers them (up to +100%), MANUAL keeps them fixed. | [optional][default to &#39;LEGACY_FOR_SALES&#39;] |
| **placement_bidding** | [**Array&lt;AmazonSponsoredProductsCampaignDataPlacementBiddingInner&gt;**](AmazonSponsoredProductsCampaignDataPlacementBiddingInner.md) | Bid increase per placement, added on top of the bid (50 on a 1.00 bid gives 1.50 at the top of search). | [optional] |
| **portfolio_id** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AmazonSponsoredProductsCampaignData.new(
  ad_product: null,
  targeting_type: null,
  bidding_strategy: null,
  placement_bidding: null,
  portfolio_id: null
)
```

