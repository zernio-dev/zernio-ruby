# Zernio::MediaItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **url** | **String** | A media item with a null, missing or empty url is dropped. | [optional] |
| **title** | **String** | Optional title for the media item. Used as the document title for LinkedIn PDF/carousel posts. If omitted, falls back to the post title, then the filename. | [optional] |
| **alt_text** | **String** | Accessibility alternative text for an image, applied on every platform that supports it: Instagram (feed images only, not Reels/Stories), Facebook, Threads, X (max 1000 chars), LinkedIn, Bluesky, and Pinterest (max 500 chars). Ignored on platforms without alt-text support (TikTok, YouTube, Snapchat, Telegram, Reddit, Google Business Profile, WhatsApp) and on video items where the platform does not accept it. Set once per image; the same value is sent to each selected platform. | [optional] |
| **filename** | **String** |  | [optional] |
| **size** | **Integer** | Optional file size in bytes | [optional] |
| **mime_type** | **String** | Optional MIME type (e.g. image/jpeg, video/mp4) | [optional] |
| **thumbnail** | **String** | Optional custom thumbnail/cover image URL for videos. Supported for Facebook video posts, Facebook Reels, regular video uploads, and LinkedIn video posts. Max 10MB, JPG/PNG recommended. | [optional] |
| **instagram_thumbnail** | **String** | Custom cover image URL for Instagram Reels. Can also be set via platformSpecificData.instagramThumbnail or platformSpecificData.reelCover. Resolution order: this field &gt; platformSpecificData.instagramThumbnail &gt; platformSpecificData.reelCover &gt; platformSpecificData.thumbnailUrl (legacy). | [optional] |
| **subtitles** | [**Array&lt;MediaSubtitle&gt;**](MediaSubtitle.md) | Subtitle (closed caption) files for a video item, in SRT or WebVTT. Each language may appear once per video. Sent to YouTube, Facebook videos, LinkedIn, X and Bluesky; ignored with a warning on every other platform. Zernio downloads each file when the post is created or updated and converts it to the format each platform requires. Per-platform rules: YouTube takes every track; Facebook takes every track, up to 200 KB each; Bluesky takes every track, up to 20 KB each after conversion to WebVTT; X takes the first track only (one subtitle per video); LinkedIn takes the first English track only. Tracks a platform cannot take are skipped and reported in the response warnings. A file that is unreachable, redirects, exceeds 1 MB, is not valid SRT or WebVTT, or is over a platform limit is rejected with a 400 (code INVALID_SUBTITLES). If a platform rejects a file at publish time, the post is still published, without subtitles. | [optional] |
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
  subtitles: null,
  tiktok_processed: null
)
```

