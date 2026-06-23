# Zernio::WebhookPayloadCommentCommentAttachment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Attachment type: sticker, animated_image_share, or photo. |  |
| **image_url** | **String** | Rendered image/preview URL (from attachment.media.image.src). | [optional] |
| **url** | **String** | Source URL (from attachment.url). For GIFs this is an l.facebook.com redirect. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCommentCommentAttachment.new(
  type: null,
  image_url: null,
  url: null
)
```

