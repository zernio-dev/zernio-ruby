# Zernio::UpdateCommentAutomation200ResponseAutomation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **keywords** | **Array&lt;String&gt;** |  | [optional] |
| **match_mode** | **String** | How a keyword is compared with the comment. &#39;contains&#39; (default) matches anywhere, even inside another word (keyword &#39;app&#39; fires on &#39;happy&#39;). &#39;word&#39; matches the keyword only as a standalone word. &#39;exact&#39; requires the whole comment to be exactly the keyword. | [optional] |
| **exclude_keywords** | **Array&lt;String&gt;** | Comments containing one of these never trigger the automation, even when a trigger keyword also matches. Compared using the same matchMode. | [optional] |
| **typo_tolerance** | **Boolean** | Only with matchMode&#x3D;word: also fire on close misspellings of a keyword (one edit for 4-7 character keywords, two from 8 up). Keywords shorter than 4 characters are never fuzzy-matched. | [optional] |
| **dm_message** | **String** |  | [optional] |
| **buttons** | [**Array&lt;DmButton&gt;**](DmButton.md) | Inline DM buttons (up to 3). Omitted when none are set. | [optional] |
| **template** | [**CommentAutomationTemplate**](CommentAutomationTemplate.md) |  | [optional] |
| **comment_reply** | **String** |  | [optional] |
| **dm_message_variations** | **Array&lt;String&gt;** | Alternate DM texts rotated at random with dmMessage. Omitted when none. | [optional] |
| **comment_reply_variations** | **Array&lt;String&gt;** | Alternate public replies rotated at random with commentReply. Omitted when none. | [optional] |
| **audience** | [**CommentAutomationAudience**](CommentAutomationAudience.md) |  | [optional] |
| **follow_gate** | [**CommentAutomationFollowGate**](CommentAutomationFollowGate.md) |  | [optional] |
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
  exclude_keywords: null,
  typo_tolerance: null,
  dm_message: null,
  buttons: null,
  template: null,
  comment_reply: null,
  dm_message_variations: null,
  comment_reply_variations: null,
  audience: null,
  follow_gate: null,
  is_active: null,
  updated_at: null
)
```

