# Zernio::CampaignResultProfit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **margin_percent** | **Float** | Share of revenue kept as gross profit, 0 to 100. Null: no profit metrics. |  |
| **cost_per_order** | **Float** | Subtracted from profit per sale, in each ad account&#39;s currency. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CampaignResultProfit.new(
  margin_percent: 35,
  cost_per_order: 4.5
)
```

