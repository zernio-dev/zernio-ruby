# Zernio::UpdateCommentAutomationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **keywords** | **Array&lt;String&gt;** |  | [optional] |
| **match_mode** | **String** |  | [optional] |
| **dm_message** | **String** |  | [optional] |
| **buttons** | [**Array&lt;DmButton&gt;**](DmButton.md) | Inline DM buttons (1-3). Pass [] to clear all buttons. | [optional] |
| **comment_reply** | **String** |  | [optional] |
| **is_active** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateCommentAutomationRequest.new(
  name: null,
  keywords: null,
  match_mode: null,
  dm_message: null,
  buttons: null,
  comment_reply: null,
  is_active: null
)
```

