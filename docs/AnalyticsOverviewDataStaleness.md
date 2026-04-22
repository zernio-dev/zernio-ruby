# Zernio::AnalyticsOverviewDataStaleness

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stale_account_count** | **Integer** | Number of accounts with stale analytics data | [optional] |
| **sync_triggered** | **Boolean** | Whether a background sync was triggered for stale accounts | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AnalyticsOverviewDataStaleness.new(
  stale_account_count: null,
  sync_triggered: null
)
```

