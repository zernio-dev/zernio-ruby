# Zernio::AnalyticsDeltaEntryMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **impressions** | **Integer** |  |  |
| **reach** | **Integer** |  |  |
| **likes** | **Integer** |  |  |
| **comments** | **Integer** |  |  |
| **shares** | **Integer** |  |  |
| **saves** | **Integer** |  |  |
| **sends** | **Integer** |  |  |
| **clicks** | **Integer** |  |  |
| **views** | **Integer** |  |  |
| **follows** | **Integer** | Follows attributed to this post (Instagram) |  |
| **ig_reels_avg_watch_time** | **Integer** | Instagram Reels average watch time, in milliseconds |  |
| **ig_reels_video_view_total_time** | **Integer** | Instagram Reels total watch time, in milliseconds |  |
| **reposts** | **Integer** |  |  |
| **reels_skip_rate** | **Float** | Instagram Reels skip rate, 0 to 1 |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AnalyticsDeltaEntryMetrics.new(
  impressions: null,
  reach: null,
  likes: null,
  comments: null,
  shares: null,
  saves: null,
  sends: null,
  clicks: null,
  views: null,
  follows: null,
  ig_reels_avg_watch_time: null,
  ig_reels_video_view_total_time: null,
  reposts: null,
  reels_skip_rate: null
)
```

