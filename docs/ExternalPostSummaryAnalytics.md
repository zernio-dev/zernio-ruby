# Zernio::ExternalPostSummaryAnalytics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **likes** | **Integer** |  | [optional] |
| **comments** | **Integer** |  | [optional] |
| **shares** | **Integer** |  | [optional] |
| **saves** | **Integer** |  | [optional] |
| **sends** | **Integer** |  | [optional] |
| **clicks** | **Integer** |  | [optional] |
| **views** | **Integer** |  | [optional] |
| **reach** | **Integer** |  | [optional] |
| **impressions** | **Integer** |  | [optional] |
| **engagement_rate** | **Float** | Percentage, rounded to 2 decimals. Same definition as PostAnalytics.engagementRate: (likes + comments + shares + saves) / (impressions or reach or views) * 100, where the denominator is the first of the three that is non-zero. Clicks and follows are never counted. | [optional] |
| **last_updated** | **Time** | When these metrics were last refreshed | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ExternalPostSummaryAnalytics.new(
  likes: null,
  comments: null,
  shares: null,
  saves: null,
  sends: null,
  clicks: null,
  views: null,
  reach: null,
  impressions: null,
  engagement_rate: null,
  last_updated: null
)
```

