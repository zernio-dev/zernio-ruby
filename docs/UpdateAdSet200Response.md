# Zernio::UpdateAdSet200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **budget** | [**AdBudget**](AdBudget.md) |  | [optional] |
| **budget_level** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **status_updated** | **Integer** |  | [optional] |
| **status_skipped** | **Integer** |  | [optional] |
| **bid_strategy** | [**BidStrategy**](BidStrategy.md) |  | [optional] |
| **bid_amount** | **Float** |  | [optional] |
| **roas_average_floor** | **Float** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdSet200Response.new(
  budget: null,
  budget_level: null,
  status: null,
  status_updated: null,
  status_skipped: null,
  bid_strategy: null,
  bid_amount: null,
  roas_average_floor: null
)
```

