# Zernio::CommentAutomationActions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **like_comment** | **Boolean** | Like the comment as the account. Facebook always; Instagram only for accounts connected through Facebook Login and allowlisted for likes while Meta reviews the permission. Otherwise the like is skipped and logged. | [optional] |
| **hide_comment** | **Boolean** | Hide the comment once the first DM has been attempted, so the private reply is never sent to an already hidden comment. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommentAutomationActions.new(
  like_comment: null,
  hide_comment: null
)
```

