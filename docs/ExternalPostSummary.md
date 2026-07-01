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
| **media_url** | **String** | Primary media URL | [optional] |
| **thumbnail_url** | **String** | Thumbnail URL | [optional] |
| **media_items** | **Array&lt;Object&gt;** | Per-item media (for carousels / multi-media posts) | [optional] |
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
  media_url: null,
  thumbnail_url: null,
  media_items: null,
  analytics: null
)
```

