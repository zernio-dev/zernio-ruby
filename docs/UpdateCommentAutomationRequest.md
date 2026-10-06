# Zernio::UpdateCommentAutomationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **trigger** | **String** | What fires the automation. Changing it detaches the automation from its bound post or story (a post id and a story id are different objects), unless this same request sets a new binding. Every trigger but &#39;comment&#39; is Instagram only; &#39;story_mention&#39; also requires no keywords and no binding. | [optional] |
| **keywords** | **Array&lt;String&gt;** |  | [optional] |
| **match_mode** | **String** | How a keyword is compared with the comment. &#39;contains&#39; (default) matches anywhere, even inside another word (keyword &#39;app&#39; fires on &#39;happy&#39;). &#39;word&#39; matches the keyword only as a standalone word. &#39;exact&#39; requires the whole comment to be exactly the keyword. | [optional] |
| **exclude_keywords** | **Array&lt;String&gt;** | Comments containing one of these never trigger the automation, even when a trigger keyword also matches. Compared using the same matchMode. | [optional] |
| **typo_tolerance** | **Boolean** | Only with matchMode&#x3D;word: also fire on close misspellings of a keyword (one edit for 4-7 character keywords, two from 8 up). Keywords shorter than 4 characters are never fuzzy-matched. | [optional] |
| **platform_post_id** | **String** | Re-binds the automation to another post: the platform media/post ID (or story media id when trigger&#x3D;story_reply). postId, platformPostId and postTitle move as a unit: sending any of them replaces all three, and an omitted one is cleared. Send all three as null (or empty) to make it account-wide (any post / any story). Omit all three to keep the current binding. 409 when another active automation already owns the new post. | [optional] |
| **post_id** | **String** | Zernio post ID (24 hexadecimal characters); platform IDs return 400. Use it INSTEAD of platformPostId to bind to a not-yet-published Zernio post: the automation stays pending and arms itself when that post publishes. Moves as a unit with platformPostId and postTitle (see platformPostId). | [optional] |
| **post_title** | **String** | Post content snippet for display. Moves as a unit with platformPostId and postId (see platformPostId). | [optional] |
| **dm_message** | **String** |  | [optional] |
| **buttons** | [**Array&lt;DmButton&gt;**](DmButton.md) | Inline DM buttons (1-3). Pass [] to clear all buttons. | [optional] |
| **template** | [**CommentAutomationTemplate**](CommentAutomationTemplate.md) |  | [optional] |
| **comment_reply** | **String** |  | [optional] |
| **dm_message_variations** | **Array&lt;String&gt;** | Alternate DM texts for random rotation (see create). Pass [] to clear. | [optional] |
| **comment_reply_variations** | **Array&lt;String&gt;** | Alternate public replies for random rotation. Pass [] to clear. | [optional] |
| **link_tracking** | **Boolean** | Wrap link buttons in a tracked redirect to count clicks. Pass false to send links untouched. | [optional] |
| **click_tag** | **String** | Tag applied to a contact when they click a tracked link (requires linkTracking). Empty string clears it. | [optional] |
| **also_match_in_dms** | **Boolean** | Also fire these keywords on a plain inbound DM. Enabling it requires the automation to end up with at least one keyword (this request&#39;s keywords if you send them, otherwise the stored ones) and is rejected on story_reply automations. | [optional] |
| **dm_delay_seconds** | **Integer** | Seconds to wait after the trigger before sending the DM. Send 0 to clear the delay and reply immediately. | [optional] |
| **comment_reply_delay_seconds** | **Integer** | Seconds to wait before posting the public comment reply. Send 0 to clear it. The reply never goes out before the DM. | [optional] |
| **audience** | [**CommentAutomationAudience**](CommentAutomationAudience.md) |  | [optional] |
| **follow_gate** | [**CommentAutomationFollowGate**](CommentAutomationFollowGate.md) |  | [optional] |
| **is_active** | **Boolean** |  | [optional] |
| **repeat_policy** | [**CommentAutomationRepeatPolicy**](CommentAutomationRepeatPolicy.md) |  | [optional] |
| **dedupe_same_text_hours** | **Integer** | Skip the DM when this recipient already received identical DM text (after personalisation) from this account, from any automation, within this many hours. The skip is logged with status skipped. Send null to clear. | [optional] |
| **public_reply_policy** | **String** | &#39;after_dm&#39; posts commentReply only after a successful DM. &#39;always&#39; posts it whatever the audience rule, dedupe or DM outcome: the moment a comment matches, or after commentReplyDelaySeconds when set (raised to dmDelaySeconds, so it never precedes the DM attempt). | [optional] |
| **actions** | [**CommentAutomationActions**](CommentAutomationActions.md) |  | [optional] |
| **quick_replies** | [**Array&lt;CommentAutomationQuickReply&gt;**](CommentAutomationQuickReply.md) | Opt-in quick-reply chips on the DM (up to 13). Chips do not render in Message Requests, where a first DM to a cold commenter lands, so prefer buttons for first contact. Mutually exclusive with buttons and template (400). Send null to clear. | [optional] |
| **dm_media** | [**CommentAutomationDmMedia**](CommentAutomationDmMedia.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateCommentAutomationRequest.new(
  name: null,
  trigger: null,
  keywords: null,
  match_mode: null,
  exclude_keywords: null,
  typo_tolerance: null,
  platform_post_id: null,
  post_id: null,
  post_title: null,
  dm_message: null,
  buttons: null,
  template: null,
  comment_reply: null,
  dm_message_variations: null,
  comment_reply_variations: null,
  link_tracking: null,
  click_tag: null,
  also_match_in_dms: null,
  dm_delay_seconds: null,
  comment_reply_delay_seconds: null,
  audience: null,
  follow_gate: null,
  is_active: null,
  repeat_policy: null,
  dedupe_same_text_hours: null,
  public_reply_policy: null,
  actions: null,
  quick_replies: null,
  dm_media: null
)
```

