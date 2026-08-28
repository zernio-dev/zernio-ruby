# Zernio::UsageAttributionGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **by_product** | [**UsageAttributionSliceByProduct**](UsageAttributionSliceByProduct.md) |  | [optional] |
| **total_usd** | **Float** |  | [optional] |
| **key** | **String** | Profile id or account id, per &#x60;groupBy&#x60;. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UsageAttributionGroup.new(
  by_product: null,
  total_usd: null,
  key: null
)
```

