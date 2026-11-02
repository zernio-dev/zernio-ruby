# Zernio::CommentAttachment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Attachment type as Facebook reports it, for example sticker, animated_image_share, photo, image_share, share or video_inline. |  |
| **image_url** | **String** | Rendered image/preview URL (from attachment.media.image.src). | [optional] |
| **url** | **String** | Source URL (from attachment.url). For GIFs this is an l.facebook.com redirect. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommentAttachment.new(
  type: null,
  image_url: null,
  url: null
)
```

