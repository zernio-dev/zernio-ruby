# Zernio::WebhookPayloadComment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID |  |
| **event** | **String** |  |  |
| **comment** | [**WebhookPayloadCommentComment**](WebhookPayloadCommentComment.md) |  |  |
| **post** | [**WebhookPayloadCommentPost**](WebhookPayloadCommentPost.md) |  |  |
| **account** | [**WebhookPayloadCommentAccount**](WebhookPayloadCommentAccount.md) |  |  |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadComment.new(
  id: null,
  event: null,
  comment: null,
  post: null,
  account: null,
  timestamp: null
)
```

