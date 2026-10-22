# Zernio::InstagramMentionedMedia

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Instagram media ID of the post whose caption mentions the account. |  |
| **caption** | **String** |  |  |
| **media_type** | **String** | IMAGE, VIDEO or CAROUSEL_ALBUM. |  |
| **media_url** | **String** | Temporary CDN URL. Meta omits it for videos with copyrighted or licensed audio and reels whose owner disabled downloads. |  |
| **timestamp** | **String** | Publication time as Meta returns it (ISO 8601). |  |
| **username** | **String** | Instagram handle of the account that posted the media and mentioned yours. |  |
| **like_count** | **Integer** | Null when the owner hides like counts. |  |
| **comments_count** | **Integer** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InstagramMentionedMedia.new(
  id: null,
  caption: null,
  media_type: IMAGE,
  media_url: null,
  timestamp: null,
  username: null,
  like_count: null,
  comments_count: null
)
```

