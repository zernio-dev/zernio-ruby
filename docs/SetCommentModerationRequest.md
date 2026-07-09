# Zernio::SetCommentModerationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The social account ID |  |
| **platform** | **String** | Only YouTube supports comment moderation |  |
| **moderation_status** | **String** | published approves the comment, rejected removes it, heldForReview returns it to the queue. |  |
| **ban_author** | **Boolean** | Also ban the comment&#39;s author, auto-rejecting their future comments. Only valid when moderationStatus is \&quot;rejected\&quot;; any other pairing is a 400.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SetCommentModerationRequest.new(
  account_id: null,
  platform: null,
  moderation_status: null,
  ban_author: null
)
```

