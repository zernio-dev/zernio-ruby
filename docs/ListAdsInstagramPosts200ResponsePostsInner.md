# Zernio::ListAdsInstagramPosts200ResponsePostsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Instagram media ID. Pass this as the existing-post id when creating an ad. |  |
| **caption** | **String** | Caption, when the media has one. | [optional] |
| **media_type** | **String** | Meta media_type, e.g. IMAGE, VIDEO or CAROUSEL_ALBUM. |  |
| **media_url** | **String** | Media URL. Meta omits it for some media types. | [optional] |
| **thumbnail_url** | **String** | Thumbnail URL. Present for VIDEO, where mediaUrl may be absent. | [optional] |
| **permalink** | **String** | Public Instagram permalink. | [optional] |
| **timestamp** | **String** | Publish time as Meta reports it. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAdsInstagramPosts200ResponsePostsInner.new(
  id: null,
  caption: null,
  media_type: null,
  media_url: null,
  thumbnail_url: null,
  permalink: null,
  timestamp: null
)
```

