# Zernio::MetaAdsPlatformData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bid_strategy** | [**BidStrategy**](BidStrategy.md) |  | [optional] |
| **bid_amount** | **Float** | Whole currency units (USD: 5 &#x3D; $5.00). Required when bidStrategy is LOWEST_COST_WITH_BID_CAP or COST_CAP. | [optional] |
| **roas_average_floor** | **Float** | Decimal ROAS multiplier (2.0 &#x3D; 2.0x). Required when bidStrategy is LOWEST_COST_WITH_MIN_ROAS. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaAdsPlatformData.new(
  bid_strategy: null,
  bid_amount: null,
  roas_average_floor: null
)
```

