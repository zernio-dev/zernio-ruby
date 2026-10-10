# Zernio::GetAllAccountsHealth200ResponseAccountsInnerAnalyticsSync

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **last_synced_at** | **Time** | Last successful sync. Null when never synced or the latest attempt failed. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAllAccountsHealth200ResponseAccountsInnerAnalyticsSync.new(
  status: null,
  last_synced_at: null
)
```

