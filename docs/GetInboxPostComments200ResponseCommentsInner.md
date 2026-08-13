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
| **replies_has_more** | **Boolean** | Facebook only. True when replies[] (capped at 10) does not hold the comment&#39;s full reply thread; fetch the rest by passing the comment id as postId to GET /v1/inbox/comments/{postId}. Absent (not false) on every other platform, including Instagram, which has no equivalent signal. | [optional] |
| **can_reply** | **Boolean** |  | [optional] |
| **can_delete** | **Boolean** |  | [optional] |
| **can_hide** | **Boolean** | Whether this comment can be hidden (Facebook, Instagram, Threads) | [optional] |
| **can_like** | **Boolean** | Whether this comment can be liked (Facebook, Twitter/X, Bluesky, Reddit) | [optional] |
| **is_hidden** | **Boolean** | Whether the comment is currently hidden | [optional] |
| **is_liked** | **Boolean** | Whether the current user has liked this comment | [optional] |
| **like_uri** | **String** | Bluesky like URI for unliking | [optional] |
| **cid** | **String** | Bluesky content identifier | [optional] |
| **parent_id** | **String** | ID of the parent comment. Present on entries inside replies[] for Facebook, Instagram and X/Twitter. On X/Twitter it is also present on top-level entries, where it holds the ID of the post replied to. Omitted entirely (key absent, not null) on top-level Facebook and Instagram entries and on every other platform, which express the parent relationship only through replies[] nesting. | [optional] |
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
  like_uri: null,
  cid: null,
  parent_id: null,
  root_uri: null,
  root_cid: null
)
```

