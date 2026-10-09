# Zernio::FacebookOrInstagramPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Facebook post id ({pageId}_{postId}) or Instagram media id |  |
| **permalink** | **String** |  |  |
| **text** | **String** | Facebook post message or Instagram caption |  |
| **thumbnail_url** | **String** | Facebook &#x60;full_picture&#x60; (or the first attachment image); Instagram &#x60;thumbnail_url&#x60; for videos, &#x60;media_url&#x60; for images. Expiring Meta CDN URL. |  |
| **media_url** | **String** | Instagram &#x60;media_url&#x60; (the video file for videos). Always null on Facebook. Expiring Meta CDN URL. |  |
| **media_type** | **String** | Instagram &#x60;media_type&#x60; (IMAGE, VIDEO, CAROUSEL_ALBUM) or the Facebook attachment type (photo, video_inline, link, ...) |  |
| **product_type** | **String** | Instagram &#x60;media_product_type&#x60;: AD, FEED, REELS or STORY. Always null on Facebook. |  |
| **created_at** | **String** | Creation time as Meta returns it (e.g. 2026-05-27T17:15:51+0000) |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::FacebookOrInstagramPost.new(
  id: null,
  permalink: null,
  text: null,
  thumbnail_url: null,
  media_url: null,
  media_type: null,
  product_type: null,
  created_at: null
)
```

