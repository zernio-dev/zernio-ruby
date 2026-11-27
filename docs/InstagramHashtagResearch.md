# Zernio::InstagramHashtagResearch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hashtag** | [**InstagramHashtagResearchHashtag**](InstagramHashtagResearchHashtag.md) |  |  |
| **top_media** | [**Array&lt;InstagramHashtagMedia&gt;**](InstagramHashtagMedia.md) | The most popular public media carrying the hashtag (Meta&#39;s top_media edge). |  |
| **recent_media** | [**Array&lt;InstagramHashtagMedia&gt;**](InstagramHashtagMedia.md) | Public media carrying the hashtag published in the last 24 hours, newest first (Meta&#39;s recent_media edge). |  |
| **recently_searched_count** | **Integer** | Unique hashtags this account searched in the rolling 7-day window, this one included. Null when Meta does not report it. |  |
| **weekly_search_limit** | **Integer** | Unique hashtags one Instagram account may search in a rolling 7 days. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InstagramHashtagResearch.new(
  hashtag: null,
  top_media: null,
  recent_media: null,
  recently_searched_count: null,
  weekly_search_limit: 30
)
```

