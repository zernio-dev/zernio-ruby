# Zernio::WebhookPayloadCommentPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Internal post ID (null for posts not published through Zernio) |  |
| **platform_post_id** | **String** | Platform&#39;s post ID |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCommentPost.new(
  id: null,
  platform_post_id: null
)
```

