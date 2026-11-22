# Zernio::CreatorCampaignCommissionTerms

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **percent_of_sales_bps** | **Integer** | Share of the sales in basis points: 1500 is 15%. | [optional] |
| **per_order_cents** | **Integer** | A flat amount per credited order. | [optional] |
| **attribution** | **String** | How an order is credited: the creator&#39;s discount code, the last click on their tracking link, or both with the code winning. | [optional][default to &#39;code_or_link&#39;] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorCampaignCommissionTerms.new(
  percent_of_sales_bps: null,
  per_order_cents: null,
  attribution: null
)
```

