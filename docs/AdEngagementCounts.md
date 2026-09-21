# Zernio::AdEngagementCounts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_engagement** | **Integer** | Meta&#39;s own post-engagement total (&#x60;post_engagement&#x60;). Meta-only. | [optional] |
| **page_engagement** | **Integer** | Meta&#39;s own page-engagement total (&#x60;page_engagement&#x60;). Meta-only. | [optional] |
| **reactions** | **Integer** | Reactions on the ad&#39;s post (&#x60;post_reaction&#x60;). For TikTok these are its paid likes. | [optional] |
| **comments** | **Integer** | Comments on the ad&#39;s post. | [optional] |
| **shares** | **Integer** | Shares of the ad&#39;s post. Meta reports these under the action type literally named &#x60;post&#x60;; TikTok under &#x60;share&#x60;. | [optional] |
| **saves** | **Integer** | Saves of the ad&#39;s post (&#x60;onsite_conversion.post_save&#x60;). | [optional] |
| **page_likes** | **Integer** | New Page likes attributed to the ad (&#x60;like&#x60;). | [optional] |
| **video_views** | **Integer** | Video views, from the &#x60;video_view&#x60; action. Meta counts a 3-second view; LinkedIn&#39;s own &#x60;videoViews&#x60; threshold (2 continuous seconds, or 25% of the video) lands under the same key, so compare across platforms with care. For completion-based counts use &#x60;videoThruplayWatchedActions&#x60;. | [optional] |
| **link_clicks** | **Integer** | Attributed link clicks (&#x60;link_click&#x60;). This is the attribution-window count, which differs from the in-session count in the sibling &#x60;inlineLinkClicks&#x60; field. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdEngagementCounts.new(
  post_engagement: null,
  page_engagement: null,
  reactions: null,
  comments: null,
  shares: null,
  saves: null,
  page_likes: null,
  video_views: null,
  link_clicks: null
)
```

