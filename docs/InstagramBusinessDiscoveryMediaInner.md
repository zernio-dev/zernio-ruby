# Zernio::InstagramBusinessDiscoveryMediaInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **caption** | **String** |  | [optional] |
| **media_type** | **String** | IMAGE, VIDEO or CAROUSEL_ALBUM | [optional] |
| **media_product_type** | **String** | FEED or REELS | [optional] |
| **timestamp** | **Time** |  | [optional] |
| **permalink** | **String** |  | [optional] |
| **like_count** | **Integer** | Null when the owner hides like counts | [optional] |
| **comments_count** | **Integer** |  | [optional] |

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
  comments_count: null
)
```

