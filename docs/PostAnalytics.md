# Zernio::PostAnalytics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **impressions** | **Integer** |  | [optional] |
| **reach** | **Integer** |  | [optional] |
| **likes** | **Integer** |  | [optional] |
| **comments** | **Integer** |  | [optional] |
| **shares** | **Integer** |  | [optional] |
| **saves** | **Integer** | Number of saves/bookmarks (Instagram, Pinterest) | [optional] |
| **clicks** | **Integer** |  | [optional] |
| **views** | **Integer** |  | [optional] |
| **follows** | **Integer** | Instagram feed posts and stories only: organic accounts that started following from this post. 0 for reels and other platforms. | [optional] |
| **ig_reels_avg_watch_time** | **Integer** | Instagram Reels only: average watch time per play, in milliseconds. 0 for non-Reels media and other platforms. | [optional] |
| **ig_reels_video_view_total_time** | **Integer** | Instagram Reels only: total watch time including replays, in milliseconds. 0 for non-Reels media and other platforms. | [optional] |
| **engagement_rate** | **Float** |  | [optional] |
| **last_updated** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PostAnalytics.new(
  impressions: 0,
  reach: 0,
  likes: 0,
  comments: 0,
  shares: 0,
  saves: 0,
  clicks: 0,
  views: 0,
  follows: 0,
  ig_reels_avg_watch_time: 0,
  ig_reels_video_view_total_time: 0,
  engagement_rate: 0,
  last_updated: null
)
```

