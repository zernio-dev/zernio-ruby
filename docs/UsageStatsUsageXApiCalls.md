# Zernio::UsageStatsUsageXApiCalls

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_api_005** | **Integer** | Calls at $0.005 per call (reads, list mgmt, bookmarks, etc.) | [optional] |
| **x_api_010** | **Integer** | Calls at $0.010 per call (publish/delete, DM reads, follows) | [optional] |
| **x_api_015** | **Integer** | Calls at $0.015 per call (sending DMs, follow actions) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UsageStatsUsageXApiCalls.new(
  x_api_005: null,
  x_api_010: null,
  x_api_015: null
)
```

