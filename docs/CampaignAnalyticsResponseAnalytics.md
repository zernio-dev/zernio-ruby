# Zernio::CampaignAnalyticsResponseAnalytics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **summary** | [**CampaignAnalyticsResponseAnalyticsSummary**](CampaignAnalyticsResponseAnalyticsSummary.md) |  | [optional] |
| **impression_share_cache** | [**CampaignAnalyticsResponseAnalyticsImpressionShareCache**](CampaignAnalyticsResponseAnalyticsImpressionShareCache.md) |  | [optional] |
| **daily** | [**Array&lt;CampaignAnalyticsResponseAnalyticsDailyInner&gt;**](CampaignAnalyticsResponseAnalyticsDailyInner.md) |  | [optional] |
| **breakdowns** | **Hash&lt;String, Array&lt;Object&gt;&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CampaignAnalyticsResponseAnalytics.new(
  summary: null,
  impression_share_cache: null,
  daily: null,
  breakdowns: null
)
```

