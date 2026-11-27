# Zernio::InstagramHashtagMedia

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Instagram media ID of a public post carrying the hashtag. |  |
| **caption** | **String** |  |  |
| **media_type** | **String** | IMAGE, VIDEO or CAROUSEL_ALBUM. |  |
| **media_product_type** | **String** | Always null. Meta does not serve it on hashtag media. |  |
| **media_url** | **String** | Temporary CDN URL. Meta omits it for videos with copyrighted audio and for carousel albums. |  |
| **thumbnail_url** | **String** | Always null. Meta does not serve it on hashtag media. |  |
| **permalink** | **String** | Public Instagram URL of the post. |  |
| **timestamp** | **String** | Publication time as Meta returns it (ISO 8601). |  |
| **like_count** | **Integer** | Null when the owner hides like counts. |  |
| **comments_count** | **Integer** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InstagramHashtagMedia.new(
  id: null,
  caption: null,
  media_type: IMAGE,
  media_product_type: null,
  media_url: null,
  thumbnail_url: null,
  permalink: null,
  timestamp: null,
  like_count: null,
  comments_count: null
)
```

