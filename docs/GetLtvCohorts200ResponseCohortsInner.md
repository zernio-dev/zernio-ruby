# Zernio::GetLtvCohorts200ResponseCohortsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cohort** | **String** |  | [optional] |
| **channel** | **String** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **customers** | **Integer** |  | [optional] |
| **revenue** | [**GetLtvCohorts200ResponseCohortsInnerRevenue**](GetLtvCohorts200ResponseCohortsInnerRevenue.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetLtvCohorts200ResponseCohortsInner.new(
  cohort: 2026-09,
  channel: facebook,
  currency: null,
  customers: null,
  revenue: null
)
```

