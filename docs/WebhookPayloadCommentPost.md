# Zernio::WebhookPayloadCommentPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Internal post ID (null for posts not published through Zernio) |  |
| **platform_post_id** | **String** | Platform&#39;s post ID |  |
| **content** | **String** | Post text, from our synced copy — no platform call is made on the comment path, so null when the post was never synced. |  |
| **image_url** | **String** | Post thumbnail or first media item URL. Platform CDN URLs expire, fetch promptly. |  |
| **permalink** | **String** | Public URL of the post. Null for posts published through Zernio that were never re-synced. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCommentPost.new(
  id: null,
  platform_post_id: null,
  content: null,
  image_url: null,
  permalink: null
)
```

