# Zernio::SendPrivateReplyToCommentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The social account ID (Instagram or Facebook) |  |
| **message** | **String** | The message text to send as a private DM |  |
| **quick_replies** | [**Array&lt;SendPrivateReplyToCommentRequestQuickRepliesInner&gt;**](SendPrivateReplyToCommentRequestQuickRepliesInner.md) | Optional quick-reply chips appended to the message. Visible only in the Instagram and Messenger apps (not on web). Maximum 13 entries.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendPrivateReplyToCommentRequest.new(
  account_id: null,
  message: null,
  quick_replies: null
)
```

