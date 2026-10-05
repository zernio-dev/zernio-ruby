# Zernio::GetPostTimeline200ResponseTimelineInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | Date in YYYY-MM-DD format | [optional] |
| **platform** | **String** | Platform name (e.g. instagram, tiktok) | [optional] |
| **platform_post_id** | **String** | Platform-specific post ID | [optional] |
| **impressions** | **Integer** | Total impressions on this date | [optional] |
| **reach** | **Integer** | Total reach on this date | [optional] |
| **likes** | **Integer** | Total likes on this date | [optional] |
| **comments** | **Integer** | Total comments on this date | [optional] |
| **shares** | **Integer** | Total shares on this date | [optional] |
| **saves** | **Integer** | Total saves on this date | [optional] |
| **clicks** | **Integer** | Total clicks on this date | [optional] |
| **views** | **Integer** | Total views on this date | [optional] |
| **follows** | **Integer** | Follows attributed to the post on this date (Instagram feed and stories, Facebook Reels, TikTok business lane). Null on Instagram Reels and video and on Facebook posts that are not Reels, where Meta has no follows metric; 0 on other platforms. | [optional] |
| **completion_rate** | **Float** | TikTok business lane: share of viewers who watched to the end on this date, 0 to 1; 0 elsewhere | [optional] |
| **profile_views** | **Integer** | TikTok business lane: profile views attributed to the post on this date; 0 elsewhere | [optional] |
| **website_clicks** | **Integer** | TikTok business lane: website-link clicks attributed to the post on this date (also inside clicks); 0 elsewhere | [optional] |
| **impression_sources** | **Hash&lt;String, Float&gt;** | TikTok business lane: share of views by surface on this date (forYou, follow, search, personalProfile, sound, directMessage, other), fractions 0 to 1; empty object elsewhere | [optional] |
| **audience_types** | **Hash&lt;String, Float&gt;** | TikTok business lane: follower / nonFollower and newViewer / returnViewer shares on this date, fractions 0 to 1; empty object elsewhere | [optional] |
| **audience_countries** | **Hash&lt;String, Float&gt;** | TikTok business lane: viewer-country shares on this date keyed by ISO-3166 alpha-2, fractions 0 to 1, top 20 with the tail in &#x60;other&#x60;; empty object elsewhere | [optional] |
| **replays** | **Integer** | Facebook Reels only: plays that were replays, as of this date; 0 elsewhere | [optional] |
| **retention_curve** | **Hash&lt;String, Float&gt;** | Facebook Reels only: share still watching at each second of playback, fractions 0 to 1 (Meta post_video_retention_graph). The base is a subset of plays that Meta selects and does not expose: on small Reels it can be far below views (6 of 51 measured), so a value is a share of that subset, not of all plays. Keys are whole seconds from the start of a play (\&quot;3\&quot; is the share still watching at 3 s). Loops count as continued playback, so a short Reels curve runs past its length (an 8 s Reel has keys \&quot;0\&quot; to \&quot;12\&quot;); Meta returns at most 41 points, so a long Reel covers only its first 40 s. Values are as of this date; empty object elsewhere. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetPostTimeline200ResponseTimelineInner.new(
  date: null,
  platform: null,
  platform_post_id: null,
  impressions: null,
  reach: null,
  likes: null,
  comments: null,
  shares: null,
  saves: null,
  clicks: null,
  views: null,
  follows: null,
  completion_rate: null,
  profile_views: null,
  website_clicks: null,
  impression_sources: null,
  audience_types: null,
  audience_countries: null,
  replays: null,
  retention_curve: null
)
```

