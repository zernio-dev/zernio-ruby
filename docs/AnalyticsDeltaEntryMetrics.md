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
| **completion_rate** | **Float** | TikTok business lane: share of viewers who watched to the end, 0 to 1 |  |
| **profile_views** | **Integer** | TikTok business lane: profile views attributed to the post |  |
| **website_clicks** | **Integer** | TikTok business lane: website-link clicks attributed to the post (also inside clicks) |  |
| **impression_sources** | **Hash&lt;String, Float&gt;** | TikTok business lane: share of views by surface (forYou, follow, search, personalProfile, sound, directMessage, other), fractions 0 to 1. Empty object elsewhere. |  |
| **audience_types** | **Hash&lt;String, Float&gt;** | TikTok business lane: follower / nonFollower and newViewer / returnViewer shares, fractions 0 to 1. Empty object elsewhere. |  |
| **audience_countries** | **Hash&lt;String, Float&gt;** | TikTok business lane: viewer-country shares keyed by ISO-3166 alpha-2, fractions 0 to 1, top 20 with the tail in &#x60;other&#x60;. Empty object elsewhere. |  |

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
  reels_skip_rate: null,
  completion_rate: null,
  profile_views: null,
  website_clicks: null,
  impression_sources: null,
  audience_types: null,
  audience_countries: null
)
```

