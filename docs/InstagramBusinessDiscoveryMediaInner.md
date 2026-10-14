# Zernio::InstagramBusinessDiscoveryMediaInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **caption** | **String** |  |  |
| **media_type** | **String** | IMAGE, VIDEO or CAROUSEL_ALBUM |  |
| **media_product_type** | **String** | FEED or REELS |  |
| **timestamp** | **Time** |  |  |
| **permalink** | **String** |  |  |
| **like_count** | **Integer** | Null when the owner hides like counts |  |
| **comments_count** | **Integer** |  |  |
| **media_url** | **String** | Temporary CDN URL that expires; download the file rather than storing the link. Null on videos whose audio is licensed music, use thumbnailUrl for the cover. |  |
| **thumbnail_url** | **String** | Video cover frame, VIDEO only. Temporary CDN URL. |  |
| **view_count** | **Integer** | Reels only. Null on images and carousels. |  |
| **children** | [**Array&lt;InstagramBusinessDiscoveryMediaInnerChildrenInner&gt;**](InstagramBusinessDiscoveryMediaInnerChildrenInner.md) | Carousel slides in order. Null unless mediaType is CAROUSEL_ALBUM. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InstagramBusinessDiscoveryMediaInner.new(
  id: null,
  caption: null,
  media_type: null,
  media_product_type: null,
  timestamp: null,
  permalink: null,
  like_count: null,
  comments_count: null,
  media_url: null,
  thumbnail_url: null,
  view_count: null,
  children: null
)
```

