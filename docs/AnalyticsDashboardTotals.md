# Zernio::AnalyticsDashboardTotals

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **impressions** | **Integer** |  | [optional] |
| **reach** | **Integer** |  | [optional] |
| **likes** | **Integer** |  | [optional] |
| **comments** | **Integer** |  | [optional] |
| **shares** | **Integer** |  | [optional] |
| **saves** | **Integer** |  | [optional] |
| **clicks** | **Integer** |  | [optional] |
| **views** | **Integer** |  | [optional] |
| **engagement_rate** | **Float** | Percentage. Likes, comments, shares and saves over impressions, pooled per platform (reach, then views, when a platform has no impressions). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AnalyticsDashboardTotals.new(
  impressions: null,
  reach: null,
  likes: null,
  comments: null,
  shares: null,
  saves: null,
  clicks: null,
  views: null,
  engagement_rate: null
)
```

