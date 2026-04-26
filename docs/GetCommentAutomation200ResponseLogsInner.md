# Zernio::GetCommentAutomation200ResponseLogsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **comment_id** | **String** |  | [optional] |
| **commenter_id** | **String** |  | [optional] |
| **commenter_name** | **String** |  | [optional] |
| **comment_text** | **String** |  | [optional] |
| **status** | **String** | DM outcome | [optional] |
| **error** | **String** | DM error message if status is failed | [optional] |
| **comment_reply_status** | **String** | Outcome of the optional public reply on the triggering comment. &#39;skipped&#39; if no commentReply was configured or if the DM failed (the public reply is not attempted in that case). | [optional] |
| **comment_reply_error** | **String** | Public-reply error message if commentReplyStatus is failed | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetCommentAutomation200ResponseLogsInner.new(
  id: null,
  comment_id: null,
  commenter_id: null,
  commenter_name: null,
  comment_text: null,
  status: null,
  error: null,
  comment_reply_status: null,
  comment_reply_error: null,
  created_at: null
)
```

