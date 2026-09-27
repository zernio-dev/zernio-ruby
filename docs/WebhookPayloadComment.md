# Zernio::WebhookPayloadComment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID: the dedupe key, also sent as the X-Zernio-Event-Id header and identical on every retry and redelivery. It identifies the event only, never an account or other resource. |  |
| **event** | **String** |  |  |
| **comment** | [**WebhookPayloadCommentComment**](WebhookPayloadCommentComment.md) |  |  |
| **post** | [**WebhookPayloadCommentPost**](WebhookPayloadCommentPost.md) |  |  |
| **account** | [**WebhookPayloadCommentAccount**](WebhookPayloadCommentAccount.md) |  |  |
| **timestamp** | **Time** | UTC time at which Zernio generated this event (set once when the event payload is built, before delivery is queued). Retries and redeliveries keep the original value, so it reflects the event, not the delivery attempt. |  |

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

