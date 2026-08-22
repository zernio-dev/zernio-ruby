# Zernio::ExternalPostWebhookPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Platform-native post ID (NOT a Zernio post ID). |  |
| **platform** | **String** | Platform the post lives on (e.g. \&quot;googlebusiness\&quot;). |  |
| **account_id** | **String** | Zernio social account ID the post belongs to. |  |
| **url** | **String** | Direct URL to the post on the platform, when available. |  |
| **content** | **String** | Post text. May be empty. |  |
| **media_type** | **String** | One of image, video, gif, document, text, carousel. |  |
| **media_items** | [**Array&lt;ExternalPostMediaItem&gt;**](ExternalPostMediaItem.md) |  |  |
| **thumbnail_url** | **String** |  |  |
| **published_at** | **Time** |  |  |
| **media_product_type** | **String** | Instagram only: the platform media product type (e.g. FEED, REELS, STORY, AD). Absent when the platform did not report it. | [optional] |
| **is_ai_generated** | **Boolean** | Instagram only: whether Instagram labeled the media as AI-generated. Absent when the platform did not report it. | [optional] |
| **is_shared_to_feed** | **Boolean** | Instagram reels only: whether the reel is also shared to the main feed. Absent when the platform did not report it. | [optional] |
| **media_audio_type** | **String** | Instagram only: audio type of the media (MUSIC or ORIGINAL_SOUND). Absent when the platform did not report it. | [optional] |
| **source** | **String** | Always \&quot;external\&quot; — distinguishes these from Zernio-originated post.* events. |  |
| **deleted_at** | **Time** | Detection time of deletion. Present on post.external.deleted; null/absent otherwise. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ExternalPostWebhookPost.new(
  id: null,
  platform: null,
  account_id: null,
  url: null,
  content: null,
  media_type: null,
  media_items: null,
  thumbnail_url: null,
  published_at: null,
  media_product_type: null,
  is_ai_generated: null,
  is_shared_to_feed: null,
  media_audio_type: null,
  source: null,
  deleted_at: null
)
```

