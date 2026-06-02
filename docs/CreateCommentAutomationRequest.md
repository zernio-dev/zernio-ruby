# Zernio::CreateCommentAutomationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **account_id** | **String** | Instagram or Facebook account ID |  |
| **trigger** | **String** | What fires the automation. &#39;comment&#39; (keyword comment on a post) or &#39;story_reply&#39; (keyword reply to an Instagram story). For &#39;story_reply&#39;, platformPostId is the story media id (omit for any story). | [optional][default to &#39;comment&#39;] |
| **platform_post_id** | **String** | Platform media/post ID (or story media id when trigger&#x3D;story_reply). Omit for an account-wide (any-post / any-story) automation. | [optional] |
| **post_id** | **String** | Zernio post ID. Required only when also targeting a specific post via platformPostId. | [optional] |
| **post_title** | **String** | Post content snippet for display | [optional] |
| **name** | **String** | Automation label |  |
| **keywords** | **Array&lt;String&gt;** | Trigger keywords (empty &#x3D; any comment triggers) | [optional] |
| **match_mode** | **String** |  | [optional][default to &#39;contains&#39;] |
| **dm_message** | **String** | DM text to send to commenter. Max 640 chars when buttons are set, otherwise ~1000. |  |
| **buttons** | [**Array&lt;DmButton&gt;**](DmButton.md) | Optional inline DM buttons (1-3). Phone buttons are Facebook-only. Omit or pass [] for a plain-text DM. | [optional] |
| **comment_reply** | **String** | Optional public reply to the comment | [optional] |
| **link_tracking** | **Boolean** | Wrap link buttons in the DM in a tracked redirect so clicks are counted (Link Clicks / CTR). Pass false to send links exactly as written. Defaults to on. | [optional][default to true] |
| **click_tag** | **String** | Optional tag applied to a contact when they click a tracked link (requires linkTracking). Lets you segment clickers for broadcasts/sequences. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCommentAutomationRequest.new(
  profile_id: null,
  account_id: null,
  trigger: null,
  platform_post_id: null,
  post_id: null,
  post_title: null,
  name: null,
  keywords: null,
  match_mode: null,
  dm_message: null,
  buttons: null,
  comment_reply: null,
  link_tracking: null,
  click_tag: null
)
```

