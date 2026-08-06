# Zernio::CommentAutomationFollowGate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | Confirmation DM sent when whenUnknown&#x3D;verify. | [optional] |
| **button_label** | **String** | Confirm button label. Defaults to \&quot;I&#39;m following\&quot;. | [optional] |
| **not_following_message** | **String** | Sent to a commenter we know does not follow (followerStatus&#x3D;follower). Omit to stay silent on a keyword comment; a confirm tap always gets an answer. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommentAutomationFollowGate.new(
  message: null,
  button_label: null,
  not_following_message: null
)
```

