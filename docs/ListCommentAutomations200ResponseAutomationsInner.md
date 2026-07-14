# Zernio::ListCommentAutomations200ResponseAutomationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **trigger** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **platform_post_id** | **String** |  | [optional] |
| **post_title** | **String** |  | [optional] |
| **keywords** | **Array&lt;String&gt;** |  | [optional] |
| **match_mode** | **String** |  | [optional] |
| **dm_message** | **String** |  | [optional] |
| **buttons** | [**Array&lt;DmButton&gt;**](DmButton.md) | Inline DM buttons (up to 3). Omitted when none are set. | [optional] |
| **comment_reply** | **String** |  | [optional] |
| **dm_message_variations** | **Array&lt;String&gt;** | Alternate DM texts rotated at random with dmMessage. Omitted when none. | [optional] |
| **comment_reply_variations** | **Array&lt;String&gt;** | Alternate public replies rotated at random with commentReply. Omitted when none. | [optional] |
| **link_tracking** | **Boolean** | Whether link buttons in the DM are wrapped in a tracked redirect to count clicks. | [optional] |
| **click_tag** | **String** | Tag applied to a contact when they click a tracked link. | [optional] |
| **is_active** | **Boolean** |  | [optional] |
| **stats** | [**ListCommentAutomations200ResponseAutomationsInnerStats**](ListCommentAutomations200ResponseAutomationsInnerStats.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListCommentAutomations200ResponseAutomationsInner.new(
  id: null,
  name: null,
  platform: null,
  trigger: null,
  account_id: null,
  platform_post_id: null,
  post_title: null,
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

