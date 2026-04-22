# Zernio::CreateCommentAutomationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **account_id** | **String** | Instagram or Facebook account ID |  |
| **platform_post_id** | **String** | Platform media/post ID |  |
| **post_id** | **String** | Zernio post ID (optional) | [optional] |
| **post_title** | **String** | Post content snippet for display | [optional] |
| **name** | **String** | Automation label |  |
| **keywords** | **Array&lt;String&gt;** | Trigger keywords (empty &#x3D; any comment triggers) | [optional] |
| **match_mode** | **String** |  | [optional][default to &#39;contains&#39;] |
| **dm_message** | **String** | DM text to send to commenter |  |
| **comment_reply** | **String** | Optional public reply to the comment | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCommentAutomationRequest.new(
  profile_id: null,
  account_id: null,
  platform_post_id: null,
  post_id: null,
  post_title: null,
  name: null,
  keywords: null,
  match_mode: null,
  dm_message: null,
  comment_reply: null
)
```

