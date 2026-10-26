# Zernio::RunGoogleAnalyticsReportRequestAllOfDateRangesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **String** | YYYY-MM-DD, today, yesterday or NdaysAgo. |  |
| **end_date** | **String** | YYYY-MM-DD, today, yesterday or NdaysAgo. |  |
| **name** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RunGoogleAnalyticsReportRequestAllOfDateRangesInner.new(
  start_date: 30daysAgo,
  end_date: today,
  name: null
)
```

