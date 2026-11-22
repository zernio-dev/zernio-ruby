# Zernio::Post

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **user_id** | [**PostUserId**](PostUserId.md) |  | [optional] |
| **title** | **String** | Stored on the post for reference/display only. This field is NOT used as the video title when publishing. To set a YouTube video title, use platformSpecificData.title on the youtube platform target (falls back to the first line of content when omitted). | [optional] |
| **content** | **String** | Null once publishing finishes when the team does not retain content. | [optional] |
| **content_not_retained** | **Boolean** | True when this team does not retain content, so &#x60;title&#x60;, &#x60;content&#x60; and every &#x60;customContent&#x60; are null after publishing. Identifiers and metadata stay. | [optional] |
| **media_items** | [**Array&lt;MediaItem&gt;**](MediaItem.md) |  | [optional] |
| **platforms** | [**Array&lt;PlatformTarget&gt;**](PlatformTarget.md) |  | [optional] |
| **scheduled_for** | **Time** |  | [optional] |
| **timezone** | **String** |  | [optional] |
| **status** | **String** | &#x60;cancelled&#x60; is set by POST /v1/posts/{postId}/unpublish once every platform entry has been removed from its platform (a post with published entries left becomes &#x60;partial&#x60;); cancelled posts can be edited and rescheduled like drafts. &#x60;pending_approval&#x60; (set by &#x60;requiresApproval: true&#x60;) never publishes until POST /v1/posts/{postId}/review approves it. | [optional] |
| **tags** | **Array&lt;String&gt;** | YouTube constraints: each tag max 100 chars, combined max 500 chars, duplicates removed. | [optional] |
| **hashtags** | **Array&lt;String&gt;** | Stored for reference only. Hashtags are NOT automatically appended to the caption when publishing. Include hashtags directly in the content field (platforms like Instagram only support hashtags as caption text). For YouTube keywords, use the tags field instead. | [optional] |
| **mentions** | **Array&lt;String&gt;** | Stored for reference only. Publishing does not create mentions from this field. | [optional] |
| **visibility** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **external_id** | **String** | Your own identifier for this post, as set on create or update. Absent when unset. Not unique: filter with &#x60;GET /v1/posts?externalId&#x3D;&#x60;. | [optional] |
| **recycling** | [**RecyclingState**](RecyclingState.md) |  | [optional] |
| **recycled_from_post_id** | **String** | ID of the original post if this post was created via recycling | [optional] |
| **queued_from_profile** | **String** | Profile ID if the post was scheduled via the queue | [optional] |
| **queue_id** | **String** | Queue ID if the post was scheduled via a specific queue | [optional] |
| **profile_id** | **String** | Profile the post is filed under. Set only on drafts that have no platforms. | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** | Last change to the post or to any of its platforms (a publish, a failure, a resolved URL). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::Post.new(
  _id: null,
  user_id: null,
  title: null,
  content: null,
  content_not_retained: null,
  media_items: null,
  platforms: null,
  scheduled_for: null,
  timezone: null,
  status: null,
  tags: null,
  hashtags: null,
  mentions: null,
  visibility: null,
  metadata: null,
  external_id: null,
  recycling: null,
  recycled_from_post_id: null,
  queued_from_profile: null,
  queue_id: null,
  profile_id: null,
  created_at: null,
  updated_at: null
)
```

