# Late::UpdateCommentAutomationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **keywords** | **Array&lt;String&gt;** |  | [optional] |
| **match_mode** | **String** |  | [optional] |
| **dm_message** | **String** |  | [optional] |
| **comment_reply** | **String** |  | [optional] |
| **is_active** | **Boolean** |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::UpdateCommentAutomationRequest.new(
  name: null,
  keywords: null,
  match_mode: null,
  dm_message: null,
  comment_reply: null,
  is_active: null
)
```

