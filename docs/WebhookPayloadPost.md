# Late::WebhookPayloadPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID |  |
| **event** | **String** |  |  |
| **post** | [**WebhookPayloadPostPost**](WebhookPayloadPostPost.md) |  |  |
| **timestamp** | **Time** |  |  |

## Example

```ruby
require 'late-sdk'

instance = Late::WebhookPayloadPost.new(
  id: null,
  event: null,
  post: null,
  timestamp: null
)
```

