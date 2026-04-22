# Zernio::ListCommentAutomations200ResponseAutomationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **platform_post_id** | **String** |  | [optional] |
| **post_title** | **String** |  | [optional] |
| **keywords** | **Array&lt;String&gt;** |  | [optional] |
| **match_mode** | **String** |  | [optional] |
| **dm_message** | **String** |  | [optional] |
| **comment_reply** | **String** |  | [optional] |
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
  account_id: null,
  platform_post_id: null,
  post_title: null,
  keywords: null,
  match_mode: null,
  dm_message: null,
  comment_reply: null,
  is_active: null,
  stats: null,
  created_at: null
)
```

