# Zernio::LinkedInAggregateAnalyticsDailyResponseAnalytics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **impressions** | [**Array&lt;LinkedInAggregateAnalyticsDailyResponseAnalyticsImpressionsInner&gt;**](LinkedInAggregateAnalyticsDailyResponseAnalyticsImpressionsInner.md) |  | [optional] |
| **reactions** | [**Array&lt;LinkedInAggregateAnalyticsDailyResponseAnalyticsImpressionsInner&gt;**](LinkedInAggregateAnalyticsDailyResponseAnalyticsImpressionsInner.md) |  | [optional] |
| **comments** | [**Array&lt;LinkedInAggregateAnalyticsDailyResponseAnalyticsImpressionsInner&gt;**](LinkedInAggregateAnalyticsDailyResponseAnalyticsImpressionsInner.md) |  | [optional] |
| **shares** | [**Array&lt;LinkedInAggregateAnalyticsDailyResponseAnalyticsImpressionsInner&gt;**](LinkedInAggregateAnalyticsDailyResponseAnalyticsImpressionsInner.md) |  | [optional] |
| **saves** | [**Array&lt;LinkedInAggregateAnalyticsDailyResponseAnalyticsImpressionsInner&gt;**](LinkedInAggregateAnalyticsDailyResponseAnalyticsImpressionsInner.md) | Daily saves (personal accounts only) | [optional] |
| **sends** | [**Array&lt;LinkedInAggregateAnalyticsDailyResponseAnalyticsImpressionsInner&gt;**](LinkedInAggregateAnalyticsDailyResponseAnalyticsImpressionsInner.md) | Daily sends via LinkedIn messaging (personal accounts only) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LinkedInAggregateAnalyticsDailyResponseAnalytics.new(
  impressions: null,
  reactions: null,
  comments: null,
  shares: null,
  saves: null,
  sends: null
)
```

