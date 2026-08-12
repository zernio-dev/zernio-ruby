# Zernio::CampaignAnalyticsResponseAnalytics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **summary** | [**AdMetrics**](AdMetrics.md) |  | [optional] |
| **daily** | [**Array&lt;CampaignAnalyticsResponseAnalyticsDailyInner&gt;**](CampaignAnalyticsResponseAnalyticsDailyInner.md) |  | [optional] |
| **breakdowns** | **Hash&lt;String, Array&lt;Object&gt;&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CampaignAnalyticsResponseAnalytics.new(
  summary: null,
  daily: null,
  breakdowns: null
)
```

