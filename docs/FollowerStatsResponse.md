# Zernio::FollowerStatsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounts** | [**Array&lt;AccountWithFollowerStats&gt;**](AccountWithFollowerStats.md) |  | [optional] |
| **stats** | **Hash&lt;String, Array&lt;FollowerStatsResponseStatsValueInner&gt;&gt;** |  | [optional] |
| **date_range** | [**FollowerStatsResponseDateRange**](FollowerStatsResponseDateRange.md) |  | [optional] |
| **granularity** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::FollowerStatsResponse.new(
  accounts: null,
  stats: null,
  date_range: null,
  granularity: null
)
```

