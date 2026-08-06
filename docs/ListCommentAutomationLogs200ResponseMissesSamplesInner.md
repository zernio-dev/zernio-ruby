# Zernio::ListCommentAutomationLogs200ResponseMissesSamplesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment_text** | **String** |  | [optional] |
| **commenter_name** | **String** |  | [optional] |
| **excluded_by** | **String** | Set when an exclusion keyword vetoed an otherwise matching comment | [optional] |
| **at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListCommentAutomationLogs200ResponseMissesSamplesInner.new(
  comment_text: null,
  commenter_name: null,
  excluded_by: null,
  at: null
)
```

