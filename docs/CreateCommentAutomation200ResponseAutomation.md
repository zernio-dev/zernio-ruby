# Zernio::CreateCommentAutomation200ResponseAutomation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **platform_post_id** | **String** |  | [optional] |
| **keywords** | **Array&lt;String&gt;** |  | [optional] |
| **match_mode** | **String** |  | [optional] |
| **dm_message** | **String** |  | [optional] |
| **buttons** | [**Array&lt;DmButton&gt;**](DmButton.md) | Inline DM buttons (up to 3). Omitted when none are set. | [optional] |
| **comment_reply** | **String** |  | [optional] |
| **link_tracking** | **Boolean** |  | [optional] |
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
  platform_post_id: null,
  keywords: null,
  match_mode: null,
  dm_message: null,
  buttons: null,
  comment_reply: null,
  link_tracking: null,
  is_active: null,
  stats: null,
  created_at: null
)
```

