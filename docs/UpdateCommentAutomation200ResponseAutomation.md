# Zernio::UpdateCommentAutomation200ResponseAutomation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **keywords** | **Array&lt;String&gt;** |  | [optional] |
| **match_mode** | **String** |  | [optional] |
| **dm_message** | **String** |  | [optional] |
| **buttons** | [**Array&lt;DmButton&gt;**](DmButton.md) | Inline DM buttons (up to 3). Omitted when none are set. | [optional] |
| **comment_reply** | **String** |  | [optional] |
| **dm_message_variations** | **Array&lt;String&gt;** | Alternate DM texts rotated at random with dmMessage. Omitted when none. | [optional] |
| **comment_reply_variations** | **Array&lt;String&gt;** | Alternate public replies rotated at random with commentReply. Omitted when none. | [optional] |
| **is_active** | **Boolean** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateCommentAutomation200ResponseAutomation.new(
  id: null,
  name: null,
  keywords: null,
  match_mode: null,
  dm_message: null,
  buttons: null,
  comment_reply: null,
  dm_message_variations: null,
  comment_reply_variations: null,
  is_active: null,
  updated_at: null
)
```

