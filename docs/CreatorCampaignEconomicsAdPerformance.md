# Zernio::CreatorCampaignEconomicsAdPerformance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **metric** | **String** |  |  |
| **rate_bps** | **Integer** | Basis points of the spend or purchase value: 1000 is 10%. | [optional] |
| **cents_per_unit** | **Integer** | Cents per purchase or click, or per 1,000 impressions. | [optional] |
| **max_payout_per_post_cents** | **Integer** |  | [optional] |
| **budget_cents** | **Integer** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorCampaignEconomicsAdPerformance.new(
  type: null,
  metric: null,
  rate_bps: null,
  cents_per_unit: null,
  max_payout_per_post_cents: null,
  budget_cents: null
)
```

