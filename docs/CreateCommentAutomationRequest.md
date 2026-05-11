# Zernio::CreateCommentAutomationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **account_id** | **String** | Instagram or Facebook account ID |  |
| **platform_post_id** | **String** | Platform media/post ID. Omit for an account-wide (any-post) automation. | [optional] |
| **post_id** | **String** | Zernio post ID. Required only when also targeting a specific post via platformPostId. | [optional] |
| **post_title** | **String** | Post content snippet for display | [optional] |
| **name** | **String** | Automation label |  |
| **keywords** | **Array&lt;String&gt;** | Trigger keywords (empty &#x3D; any comment triggers) | [optional] |
| **match_mode** | **String** |  | [optional][default to &#39;contains&#39;] |
| **dm_message** | **String** | DM text to send to commenter. Max 640 chars when buttons are set, otherwise ~1000. |  |
| **buttons** | [**Array&lt;DmButton&gt;**](DmButton.md) | Optional inline DM buttons (1-3). Phone buttons are Facebook-only. Omit or pass [] for a plain-text DM. | [optional] |
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
  buttons: null,
  comment_reply: null
)
```

