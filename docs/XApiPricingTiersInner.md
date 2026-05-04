# Zernio::XApiPricingTiersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tier** | **String** | Historical bucket key used in &#x60;xApiCalls&#x60; aggregation. | [optional] |
| **price_per_call_usd** | **Float** |  | [optional] |
| **operation_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::XApiPricingTiersInner.new(
  tier: null,
  price_per_call_usd: 0.005,
  operation_count: 13
)
```

