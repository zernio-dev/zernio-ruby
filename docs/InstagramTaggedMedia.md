# Zernio::InstagramTaggedMedia

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Instagram media ID of the post the account is tagged in. |  |
| **caption** | **String** |  |  |
| **media_type** | **String** | IMAGE, VIDEO or CAROUSEL_ALBUM. |  |
| **media_product_type** | **String** | FEED or REELS. |  |
| **media_url** | **String** | Temporary CDN URL. Meta omits it for videos with copyrighted audio, flagged videos and reels whose owner disabled downloads. |  |
| **thumbnail_url** | **String** | Cover image of a video or reel. |  |
| **permalink** | **String** | Public Instagram URL of the post. |  |
| **timestamp** | **String** | Publication time as Meta returns it (ISO 8601). |  |
| **username** | **String** | Instagram handle of the account that posted the media and tagged yours. |  |
| **like_count** | **Integer** | Null when the owner hides like counts. |  |
| **comments_count** | **Integer** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InstagramTaggedMedia.new(
  id: null,
  caption: null,
  media_type: IMAGE,
  media_product_type: FEED,
  media_url: null,
  thumbnail_url: null,
  permalink: null,
  timestamp: null,
  username: null,
  like_count: null,
  comments_count: null
)
```

