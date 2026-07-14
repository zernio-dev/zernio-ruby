# Zernio::CreateCommentAutomation200ResponseAutomation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **trigger** | **String** |  | [optional] |
| **platform_post_id** | **String** |  | [optional] |
| **keywords** | **Array&lt;String&gt;** |  | [optional] |
| **match_mode** | **String** |  | [optional] |
| **dm_message** | **String** |  | [optional] |
| **buttons** | [**Array&lt;DmButton&gt;**](DmButton.md) | Inline DM buttons (up to 3). Omitted when none are set. | [optional] |
| **comment_reply** | **String** |  | [optional] |
| **dm_message_variations** | **Array&lt;String&gt;** | Alternate DM texts rotated at random with dmMessage. Omitted when none. | [optional] |
| **comment_reply_variations** | **Array&lt;String&gt;** | Alternate public replies rotated at random with commentReply. Omitted when none. | [optional] |
| **link_tracking** | **Boolean** |  | [optional] |
| **click_tag** | **String** |  | [optional] |
| **is_active** | **Boolean** |  | [optional] |
| **stats** | [**CreateCommentAutomation200ResponseAutomationStats**](CreateCommentAutomation200ResponseAutomationStats.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCommentAutomation200ResponseAutomation.new(
  id: null,
  name: null,
  platform: null,
  trigger: null,
  platform_post_id: null,
  keywords: null,
  match_mode: null,
  dm_message: null,
  buttons: null,
  comment_reply: null,
  dm_message_variations: null,
  comment_reply_variations: null,
  link_tracking: null,
  click_tag: null,
  is_active: null,
  stats: null,
  created_at: null
)
```

