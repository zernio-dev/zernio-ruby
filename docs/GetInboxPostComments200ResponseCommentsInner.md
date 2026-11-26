# Zernio::GetInboxPostComments200ResponseCommentsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |
| **created_time** | **Time** |  | [optional] |
| **from** | [**GetInboxPostComments200ResponseCommentsInnerFrom**](GetInboxPostComments200ResponseCommentsInnerFrom.md) |  | [optional] |
| **like_count** | **Integer** |  | [optional] |
| **reply_count** | **Integer** | The platform&#39;s own reply count, which includes hidden and deleted replies. Can exceed replies[].length even when repliesHasMore is false or absent. | [optional] |
| **platform** | **String** | The platform this comment is from | [optional] |
| **url** | **String** | Direct link to the comment on the platform (if available) | [optional] |
| **replies** | **Array&lt;Object&gt;** |  | [optional] |
| **replies_has_more** | **Boolean** | Facebook and Instagram. True when replies[] does not hold the comment&#39;s full reply thread: Facebook caps it at 10, Instagram at the first page Meta returns (25).  Fetch the rest by passing the comment id as the &#x60;commentId&#x60; query parameter to GET /v1/inbox/comments/{postId} (or, for backwards compatibility, as &#x60;postId&#x60;).  On Instagram, &#x60;replyCount&#x60; counts only the replies carried in replies[], so read this flag (not &#x60;replyCount&#x60;) to know whether the thread is complete.  Absent (not false) on every other platform, except with view&#x3D;summary, where it is also true on any comment whose &#x60;replyCount&#x60; is higher than the replies it carries (nested replies are cut to 3 there).  | [optional] |
| **can_reply** | **Boolean** | Whether this comment can be replied to. Always present. | [optional] |
| **can_delete** | **Boolean** | Whether DELETE is expected to work on this comment. True for the account&#39;s own comments, and for anyone&#39;s comment on Facebook, Instagram, YouTube and LinkedIn organization accounts. On TikTok, TikTok&#39;s own flag decides. False does not block the call: the platform decides. Always present. | [optional] |
| **can_hide** | **Boolean** | Whether hide is supported for this comment&#39;s platform (Facebook, Instagram, Threads, X, TikTok). It does not check each comment: X needs a conversation started by the account, and Threads only hides top-level replies. Always present. | [optional] |
| **can_like** | **Boolean** | Whether this comment can be liked (Facebook, X, Bluesky, Reddit, LinkedIn, TikTok). Always present. | [optional] |
| **is_hidden** | **Boolean** | Whether the comment is currently hidden. On Instagram accounts connected through Facebook Login, Meta leaves hidden comments (and their replies) out of the list entirely, so they never appear with isHidden true; Instagram Login accounts and Facebook Pages return them with isHidden true. | [optional] |
| **is_liked** | **Boolean** | Whether the connected account has liked this comment. Read on Facebook, Bluesky, Reddit and TikTok only. On every other platform (Instagram, X, LinkedIn, Threads, YouTube and the rest) it is never true, even for comments the account liked, so treat false or a missing value there as unknown. | [optional] |
| **attachment** | [**CommentAttachment**](CommentAttachment.md) | The comment&#39;s media, whenever the platform returns one (replies included). Supported on Facebook, TikTok, X, Threads and Bluesky; absent when the comment has no media and on every other platform. See CommentAttachment for each platform&#39;s &#x60;type&#x60; values. | [optional] |
| **like_uri** | **String** | Bluesky like URI for unliking | [optional] |
| **cid** | **String** | Bluesky content identifier | [optional] |
| **parent_id** | **String** | ID of the parent comment.  - Facebook and Instagram: present on entries inside replies[]; omitted on top-level entries. - X: present inside replies[] and on top-level entries, where it holds the ID of the post replied to. - Every other platform: omitted; the parent relationship is expressed only through replies[] nesting.  When omitted, the key is absent, not null. | [optional] |
| **root_uri** | **String** | Bluesky root post URI | [optional] |
| **root_cid** | **String** | Bluesky root post CID | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxPostComments200ResponseCommentsInner.new(
  id: null,
  message: null,
  created_time: null,
  from: null,
  like_count: null,
  reply_count: null,
  platform: null,
  url: null,
  replies: null,
  replies_has_more: null,
  can_reply: null,
  can_delete: null,
  can_hide: null,
  can_like: null,
  is_hidden: null,
  is_liked: null,
  attachment: null,
  like_uri: null,
  cid: null,
  parent_id: null,
  root_uri: null,
  root_cid: null
)
```

