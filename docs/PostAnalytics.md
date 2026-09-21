# Zernio::PostAnalytics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **impressions** | **Integer** |  | [optional] |
| **reach** | **Integer** |  | [optional] |
| **likes** | **Integer** |  | [optional] |
| **comments** | **Integer** |  | [optional] |
| **shares** | **Integer** |  | [optional] |
| **saves** | **Integer** | Number of saves/bookmarks (Instagram, Pinterest, X) | [optional] |
| **clicks** | **Integer** |  | [optional] |
| **views** | **Integer** |  | [optional] |
| **follows** | **Integer** | Instagram feed posts and stories only: organic accounts that started following from this post. Null on Instagram Reels and non-Reels video, where Meta does not expose this metric for the media. 0 for other platforms. | [optional] |
| **ig_reels_avg_watch_time** | **Integer** | Instagram Reels only: average watch time per play, in milliseconds. 0 for non-Reels media and other platforms. | [optional] |
| **ig_reels_video_view_total_time** | **Integer** | Instagram Reels only: total watch time including replays, in milliseconds. 0 for non-Reels media and other platforms. | [optional] |
| **reels_skip_rate** | **Float** | Instagram Reels only: percentage (0-100) of initial views that skipped the reel within its first 3 seconds, as reported by Meta. Meta labels the metric estimated and in development, so it can move between syncs. 0 for non-Reels media and other platforms. When a post is published to several accounts, the aggregate is weighted by views. | [optional] |
| **completion_rate** | **Float** | TikTok accounts connected through the TikTok for Business app only: share of viewers who watched the video to the end, 0 to 1, as TikTok reports it (T+24-48h, only for posts active in the last 7 days). 0 for other platforms. When a post is published to several accounts, the aggregate is weighted by views. | [optional] |
| **profile_views** | **Integer** | TikTok accounts connected through the TikTok for Business app only: profile views from users who reached the profile through this post (T+24-48h). 0 for other platforms. | [optional] |
| **website_clicks** | **Integer** | TikTok accounts connected through the TikTok for Business app only: clicks on the profile website link attributed to this post (T+24-48h). Also counted inside &#x60;clicks&#x60;, which sums every profile-link type (website, phone, email, address, app download). 0 for other platforms. | [optional] |
| **impression_sources** | **Hash&lt;String, Float&gt;** | TikTok accounts connected through the TikTok for Business app only: share of views by surface, as fractions 0 to 1 (T+24-48h, only for posts active in the last 7 days). Keys: &#x60;forYou&#x60;, &#x60;follow&#x60;, &#x60;search&#x60;, &#x60;personalProfile&#x60;, &#x60;sound&#x60;, &#x60;directMessage&#x60;, &#x60;other&#x60;; a surface TikTok adds later appears under a camelCase key derived from its name. Empty object when TikTok reports nothing, and for other platforms. When a post is published to several accounts, each share is weighted by views. | [optional] |
| **audience_types** | **Hash&lt;String, Float&gt;** | TikTok accounts connected through the TikTok for Business app only: two viewer splits as fractions 0 to 1 (T+24-48h). Each pair sums to 1 when present, &#x60;follower&#x60; + &#x60;nonFollower&#x60; and &#x60;newViewer&#x60; + &#x60;returnViewer&#x60;; TikTok can report one pair without the other. Empty object when TikTok reports nothing, and for other platforms. Views-weighted across accounts like impressionSources. | [optional] |
| **audience_countries** | **Hash&lt;String, Float&gt;** | TikTok accounts connected through the TikTok for Business app only: share of views by viewer country as fractions 0 to 1, keyed by upper-case ISO-3166 alpha-2 code (T+24-48h, only for posts active in the last 7 days). At most 20 country keys plus &#x60;other&#x60;: the catch-all bucket TikTok sends, any country below 0.001 and anything past the twentieth all sum into &#x60;other&#x60;, so the values still add up to 1. Empty object when TikTok reports nothing, and for other platforms. Views-weighted across accounts like impressionSources. | [optional] |
| **reposts** | **Integer** | Instagram accounts connected with Facebook Login only: reposts of the media by other users, minus deleted reposts, on feed posts, reels and stories. Meta does not expose this metric for accounts connected with Instagram Login, so those always report 0. 0 for other platforms, including Threads, where reposts are counted in shares instead. | [optional] |
| **video_duration_seconds** | **Integer** | Video length in seconds. Currently Instagram Reels only; combine with igReelsAvgWatchTime (ms) to estimate retention. Null when unknown (other platforms, non-video media, or when Instagram does not expose the media URL, e.g. reels with copyrighted audio). | [optional] |
| **engagement_rate** | **Float** | Percentage, rounded to 2 decimals: (likes + comments + shares + saves) / (impressions or reach or views) * 100. Clicks and follows are never counted. The denominator is the FIRST of impressions, reach, views that is non-zero, so it is not the same basis on every post: a post with impressions divides by impressions, one without falls back to reach, then to views. If you need a single consistent basis (e.g. interactions / reach), compute it from the raw fields above. The engagementRate on the LinkedIn account endpoints is a different formula. | [optional] |
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
  reels_skip_rate: 48.8,
  completion_rate: 0,
  profile_views: 0,
  website_clicks: 0,
  impression_sources: {forYou&#x3D;0.84, follow&#x3D;0.05, search&#x3D;0.06, personalProfile&#x3D;0.03, sound&#x3D;0.01, directMessage&#x3D;0, other&#x3D;0.01},
  audience_types: {follower&#x3D;0.1, nonFollower&#x3D;0.9, newViewer&#x3D;0.99, returnViewer&#x3D;0.01},
  audience_countries: {US&#x3D;0.62, GB&#x3D;0.11, CA&#x3D;0.07, DE&#x3D;0.05, other&#x3D;0.15},
  reposts: 0,
  video_duration_seconds: 30,
  engagement_rate: 6.59,
  last_updated: null
)
```

