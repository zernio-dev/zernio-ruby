# Zernio::MediaItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **title** | **String** | Optional title for the media item. Used as the document title for LinkedIn PDF/carousel posts. If omitted, falls back to the post title, then the filename. | [optional] |
| **alt_text** | **String** | Accessibility alternative text for an image, applied on every platform that supports it: Instagram (feed images only, not Reels/Stories), Facebook, Threads, X/Twitter (max 1000 chars), LinkedIn, Bluesky, and Pinterest (max 500 chars). Ignored on platforms without alt-text support (TikTok, YouTube, Snapchat, Telegram, Reddit, Google Business, WhatsApp) and on video items where the platform does not accept it. Set once per image; the same value is sent to each selected platform. | [optional] |
| **filename** | **String** |  | [optional] |
| **size** | **Integer** | Optional file size in bytes | [optional] |
| **mime_type** | **String** | Optional MIME type (e.g. image/jpeg, video/mp4) | [optional] |
| **thumbnail** | **String** | Optional custom thumbnail/cover image URL for videos. Supported for Facebook video posts, Facebook Reels, and regular video uploads. Max 10MB, JPG/PNG recommended. | [optional] |
| **instagram_thumbnail** | **String** | Custom cover image URL for Instagram Reels. Can also be set via platformSpecificData.instagramThumbnail or platformSpecificData.reelCover. Resolution order: this field &gt; platformSpecificData.instagramThumbnail &gt; platformSpecificData.reelCover &gt; platformSpecificData.thumbnailUrl (legacy). | [optional] |
| **tiktok_processed** | **Boolean** | Internal flag indicating the image was resized for TikTok | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MediaItem.new(
  type: null,
  url: null,
  title: null,
  alt_text: null,
  filename: null,
  size: null,
  mime_type: null,
  thumbnail: null,
  instagram_thumbnail: null,
  tiktok_processed: null
)
```

