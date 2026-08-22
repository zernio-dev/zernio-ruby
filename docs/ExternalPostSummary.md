# Zernio::ExternalPostSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | Platform the post belongs to (e.g. instagram, youtube, tiktok) | [optional] |
| **platform_post_id** | **String** | The platform&#39;s own post/media/video id | [optional] |
| **platform_post_url** | **String** | Canonical URL (permalink) of the post on the platform | [optional] |
| **content** | **String** | Post caption / text | [optional] |
| **published_at** | **Time** | When the post was published on the platform | [optional] |
| **media_type** | **String** | Media type (e.g. image, video, carousel) | [optional] |
| **thumbnail_url** | **String** | Thumbnail URL | [optional] |
| **media_items** | **Array&lt;Object&gt;** | Per-item media (for carousels / multi-media posts) | [optional] |
| **media_product_type** | **String** | Instagram only: the platform media product type (e.g. FEED, REELS, STORY, AD). Absent when the platform did not report it. | [optional] |
| **is_ai_generated** | **Boolean** | Instagram only: whether Instagram labeled the media as AI-generated. Absent when the platform did not report it. | [optional] |
| **is_shared_to_feed** | **Boolean** | Instagram reels only: whether the reel is also shared to the main feed. Absent when the platform did not report it. | [optional] |
| **media_audio_type** | **String** | Instagram only: audio type of the media (MUSIC or ORIGINAL_SOUND). Absent when the platform did not report it. | [optional] |
| **analytics** | [**ExternalPostSummaryAnalytics**](ExternalPostSummaryAnalytics.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ExternalPostSummary.new(
  platform: null,
  platform_post_id: null,
  platform_post_url: null,
  content: null,
  published_at: null,
  media_type: null,
  thumbnail_url: null,
  media_items: null,
  media_product_type: null,
  is_ai_generated: null,
  is_shared_to_feed: null,
  media_audio_type: null,
  analytics: null
)
```

