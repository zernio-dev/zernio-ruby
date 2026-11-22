# Zernio::SetCampaignResultProfitRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **margin_percent** | **Float** |  |  |
| **cost_per_order** | **Float** | Needs a marginPercent. Omitted: none. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SetCampaignResultProfitRequest.new(
  margin_percent: 35,
  cost_per_order: 4.5
)
```

