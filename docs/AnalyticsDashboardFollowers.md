# Zernio::AnalyticsDashboardFollowers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current** | **Integer** | Live follower count when the window includes today, otherwise the count the window ended on. | [optional] |
| **gained** | **Integer** | Last minus first follower snapshot inside the window. Can be negative. | [optional] |
| **by_account** | [**Array&lt;AnalyticsDashboardFollowersByAccountInner&gt;**](AnalyticsDashboardFollowersByAccountInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AnalyticsDashboardFollowers.new(
  current: null,
  gained: null,
  by_account: null
)
```

