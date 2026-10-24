# Zernio::FacebookVisitorPostMedia

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **media_type** | **String** |  |  |
| **thumbnail_url** | **String** | Temporary CDN URL of the cover image. Empty when there is none. |  |
| **media_items** | [**Array&lt;FacebookVisitorPostMediaMediaItemsInner&gt;**](FacebookVisitorPostMediaMediaItemsInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::FacebookVisitorPostMedia.new(
  media_type: null,
  thumbnail_url: null,
  media_items: null
)
```

