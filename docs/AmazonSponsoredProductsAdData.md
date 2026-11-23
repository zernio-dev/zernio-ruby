# Zernio::AmazonSponsoredProductsAdData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_product** | **String** |  |  |
| **targeting_type** | **String** | Required for a new campaign. MANUAL targets keywords and productTargets; AUTO lets Amazon match searches and products (tune them with autoTargeting). Immutable. | [optional] |
| **bidding_strategy** | **String** | Dynamic bidding: LEGACY_FOR_SALES lowers bids when a sale is unlikely, AUTO_FOR_SALES raises and lowers them (up to +100%), MANUAL keeps them fixed. | [optional][default to &#39;LEGACY_FOR_SALES&#39;] |
| **placement_bidding** | [**Array&lt;AmazonSponsoredProductsCampaignDataPlacementBiddingInner&gt;**](AmazonSponsoredProductsCampaignDataPlacementBiddingInner.md) | Bid increase per placement, added on top of the bid (50 on a 1.00 bid gives 1.50 at the top of search). | [optional] |
| **portfolio_id** | **String** |  | [optional] |
| **asins** | **Array&lt;String&gt;** | Vendor profiles: the ASINs to advertise, one product ad each. | [optional] |
| **skus** | **Array&lt;String&gt;** | Seller profiles: the SKUs to advertise, one product ad each. Sending the identifier the profile does not use returns a 400. | [optional] |
| **default_bid** | **Float** | Required for a new ad group. Whole currency units; keywords and targets without their own bid use it. US: 0.02 to 1000. | [optional] |
| **product_targets** | [**Array&lt;AmazonSponsoredProductsAdDataAllOfProductTargets&gt;**](AmazonSponsoredProductsAdDataAllOfProductTargets.md) | MANUAL campaigns. Each entry is one Amazon targeting clause: a product (ASIN_SAME_AS), a category (ASIN_CATEGORY_SAME_AS) optionally refined by brand, price, rating or Prime in the same expression. | [optional] |
| **negative_product_targets** | [**Array&lt;AmazonSponsoredProductsAdDataAllOfNegativeProductTargets&gt;**](AmazonSponsoredProductsAdDataAllOfNegativeProductTargets.md) |  | [optional] |
| **auto_targeting** | [**AmazonSponsoredProductsAdDataAllOfAutoTargeting**](AmazonSponsoredProductsAdDataAllOfAutoTargeting.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AmazonSponsoredProductsAdData.new(
  ad_product: null,
  targeting_type: null,
  bidding_strategy: null,
  placement_bidding: null,
  portfolio_id: null,
  asins: null,
  skus: null,
  default_bid: null,
  product_targets: null,
  negative_product_targets: null,
  auto_targeting: null
)
```

