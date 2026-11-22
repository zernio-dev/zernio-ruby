# Zernio::WebhookPayloadEmailThreadRepliedReply

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **String** | Provider id of the reply. | [optional] |
| **from** | [**EmailAddress**](EmailAddress.md) |  | [optional] |
| **received_at** | **Time** |  | [optional] |
| **count** | **Integer** | Replies in the thread so far. | [optional] |
| **clean** | [**WebhookPayloadEmailThreadRepliedReplyClean**](WebhookPayloadEmailThreadRepliedReplyClean.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadEmailThreadRepliedReply.new(
  message_id: null,
  from: null,
  received_at: null,
  count: null,
  clean: null
)
```

