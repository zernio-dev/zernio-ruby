# Late::GetAdAnalytics200ResponseAnalytics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **summary** | [**AdMetrics**](AdMetrics.md) |  | [optional] |
| **daily** | [**Array&lt;GetAdAnalytics200ResponseAnalyticsDailyInner&gt;**](GetAdAnalytics200ResponseAnalyticsDailyInner.md) |  | [optional] |
| **breakdowns** | **Hash&lt;String, Array&lt;Object&gt;&gt;** |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::GetAdAnalytics200ResponseAnalytics.new(
  summary: null,
  daily: null,
  breakdowns: null
)
```

