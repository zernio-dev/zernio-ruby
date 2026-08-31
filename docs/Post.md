# Zernio::Post

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **user_id** | [**PostUserId**](PostUserId.md) |  | [optional] |
| **title** | **String** | Stored on the post for reference/display only. This field is NOT used as the video title when publishing. To set a YouTube video title, use platformSpecificData.title on the youtube platform target (falls back to the first line of content when omitted). | [optional] |
| **content** | **String** |  | [optional] |
| **media_items** | [**Array&lt;MediaItem&gt;**](MediaItem.md) |  | [optional] |
| **platforms** | [**Array&lt;PlatformTarget&gt;**](PlatformTarget.md) |  | [optional] |
| **scheduled_for** | **Time** |  | [optional] |
| **timezone** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** | YouTube constraints: each tag max 100 chars, combined max 500 chars, duplicates removed. | [optional] |
| **hashtags** | **Array&lt;String&gt;** | Stored for reference only. Hashtags are NOT automatically appended to the caption when publishing. Include hashtags directly in the content field (platforms like Instagram only support hashtags as caption text). For YouTube keywords, use the tags field instead. | [optional] |
| **mentions** | **Array&lt;String&gt;** | Stored for reference only. This field does NOT automatically create @mentions when publishing. For LinkedIn @mentions, use the /v1/accounts/{accountId}/linkedin-mentions endpoint to resolve profile URLs to URNs, then embed the returned mentionFormat directly in the post content field. | [optional] |
| **visibility** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **recycling** | [**RecyclingState**](RecyclingState.md) |  | [optional] |
| **recycled_from_post_id** | **String** | ID of the original post if this post was created via recycling | [optional] |
| **queued_from_profile** | **String** | Profile ID if the post was scheduled via the queue | [optional] |
| **queue_id** | **String** | Queue ID if the post was scheduled via a specific queue | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::Post.new(
  _id: null,
  user_id: null,
  title: null,
  content: null,
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
  recycling: null,
  recycled_from_post_id: null,
  queued_from_profile: null,
  queue_id: null,
  created_at: null,
  updated_at: null
)
```

