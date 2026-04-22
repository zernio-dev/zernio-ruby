# Zernio::FollowerStatsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounts** | [**Array&lt;AccountWithFollowerStats&gt;**](AccountWithFollowerStats.md) |  | [optional] |
| **date_range** | [**GetFollowerStats200ResponseDateRange**](GetFollowerStats200ResponseDateRange.md) |  | [optional] |
| **aggregation** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::FollowerStatsResponse.new(
  accounts: null,
  date_range: null,
  aggregation: null
)
```

