# Zernio::UpdateCommentAutomationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **trigger** | **String** | What fires the automation. Changing it detaches the automation from its bound post or story (a post id and a story id are different objects), unless this same request sets a new binding. &#39;story_reply&#39; is Instagram only. | [optional] |
| **keywords** | **Array&lt;String&gt;** |  | [optional] |
| **match_mode** | **String** | How a keyword is compared with the comment. &#39;contains&#39; (default) matches anywhere, even inside another word (keyword &#39;app&#39; fires on &#39;happy&#39;). &#39;word&#39; matches the keyword only as a standalone word. &#39;exact&#39; requires the whole comment to be exactly the keyword. | [optional] |
| **exclude_keywords** | **Array&lt;String&gt;** | Comments containing one of these never trigger the automation, even when a trigger keyword also matches. Compared using the same matchMode. | [optional] |
| **typo_tolerance** | **Boolean** | Only with matchMode&#x3D;word: also fire on close misspellings of a keyword (one edit for 4-7 character keywords, two from 8 up). Keywords shorter than 4 characters are never fuzzy-matched. | [optional] |
| **dm_message** | **String** |  | [optional] |
| **buttons** | [**Array&lt;DmButton&gt;**](DmButton.md) | Inline DM buttons (1-3). Pass [] to clear all buttons. | [optional] |
| **comment_reply** | **String** |  | [optional] |
| **dm_message_variations** | **Array&lt;String&gt;** | Alternate DM texts for random rotation (see create). Pass [] to clear. | [optional] |
| **comment_reply_variations** | **Array&lt;String&gt;** | Alternate public replies for random rotation. Pass [] to clear. | [optional] |
| **link_tracking** | **Boolean** | Wrap link buttons in a tracked redirect to count clicks. Pass false to send links untouched. | [optional] |
| **click_tag** | **String** | Tag applied to a contact when they click a tracked link (requires linkTracking). Empty string clears it. | [optional] |
| **audience** | [**CommentAutomationAudience**](CommentAutomationAudience.md) |  | [optional] |
| **follow_gate** | [**CommentAutomationFollowGate**](CommentAutomationFollowGate.md) |  | [optional] |
| **is_active** | **Boolean** |  | [optional] |

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
  dm_message: null,
  buttons: null,
  comment_reply: null,
  dm_message_variations: null,
  comment_reply_variations: null,
  link_tracking: null,
  click_tag: null,
  audience: null,
  follow_gate: null,
  is_active: null
)
```

