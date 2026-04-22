# Zernio::SendPrivateReplyToCommentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The social account ID (Instagram or Facebook) |  |
| **message** | **String** | The message text to send as a private DM |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendPrivateReplyToCommentRequest.new(
  account_id: null,
  message: null
)
```

