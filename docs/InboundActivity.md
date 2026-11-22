# Zernio::InboundActivity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_message_at** | **Time** | First inbound message since the latest connect, or since tracking began for an account connected before it. Null when none yet. |  |
| **last_message_at** | **Time** | Latest inbound message, precise to about one hour. Null when none yet. |  |
| **first_comment_at** | **Time** | First inbound comment since the latest connect, or since tracking began for an account connected before it. Null when none yet. |  |
| **last_comment_at** | **Time** | Latest inbound comment, precise to about one hour. Null when none yet. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InboundActivity.new(
  first_message_at: null,
  last_message_at: null,
  first_comment_at: null,
  last_comment_at: null
)
```

