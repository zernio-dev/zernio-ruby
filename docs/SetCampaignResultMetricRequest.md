# Zernio::SetCampaignResultMetricRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** |  |  |
| **kind** | **String** |  |  |
| **currency** | **String** | ISO 4217, money metrics only. | [optional] |
| **formula** | **String** | Makes it a computed metric. Null or absent for a number you send. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SetCampaignResultMetricRequest.new(
  label: Qualified leads,
  kind: null,
  currency: EUR,
  formula: spend / sales
)
```

