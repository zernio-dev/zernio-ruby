# Zernio::GetCommentAutomation200ResponseLogsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **comment_id** | **String** |  | [optional] |
| **commenter_id** | **String** |  | [optional] |
| **commenter_name** | **String** |  | [optional] |
| **comment_text** | **String** |  | [optional] |
| **status** | **String** | DM outcome. &#39;pending&#39; &#x3D; the automation has a dmDelaySeconds and the response is queued but not sent yet. &#39;gated&#39; &#x3D; the follow-gate confirmation DM went out and we are waiting for the tap; it flips to &#39;sent&#39; or &#39;skipped&#39; when they tap. | [optional] |
| **audience_outcome** | **String** | How the audience rule resolved. Absent on automations without one. | [optional] |
| **commenter_is_follower** | **Boolean** | Follow relationship at decision time. Absent when Instagram would not tell us (the commenter never messaged the account). | [optional] |
| **commenter_follower_count** | **Integer** |  | [optional] |
| **error** | **String** | DM error message if status is failed | [optional] |
| **comment_reply_status** | **String** | Outcome of the optional public reply on the triggering comment. &#39;skipped&#39; if no commentReply was configured or if the DM failed (the public reply is not attempted in that case). | [optional] |
| **comment_reply_error** | **String** | Public-reply error message if commentReplyStatus is failed | [optional] |
| **next_due_at** | **Time** | When the next queued send fires. Present only while something is still pending. | [optional] |
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
  audience_outcome: null,
  commenter_is_follower: null,
  commenter_follower_count: null,
  error: null,
  comment_reply_status: null,
  comment_reply_error: null,
  next_due_at: null,
  created_at: null
)
```

