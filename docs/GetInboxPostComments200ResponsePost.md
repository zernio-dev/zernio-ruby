# Zernio::GetInboxPostComments200ResponsePost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Facebook post id ({pageId}_{postId}) or Instagram media id |  |
| **fullname** | **String** | Fullname with type prefix (e.g. \&quot;t3_1tjtj26\&quot;) | [optional] |
| **title** | **String** |  | [optional] |
| **selftext** | **String** | Body text for self-posts (empty for link posts) | [optional] |
| **author** | **String** | Reddit username, without the u/ prefix | [optional] |
| **subreddit** | **String** | Subreddit name, without the r/ prefix | [optional] |
| **permalink** | **String** |  |  |
| **url** | **String** | For link posts, the external URL; for self-posts, the Reddit permalink | [optional] |
| **score** | **Integer** | Net upvotes (upvotes minus downvotes) | [optional] |
| **num_comments** | **Integer** |  | [optional] |
| **created_utc** | **Integer** | Unix timestamp in seconds | [optional] |
| **over18** | **Boolean** |  | [optional] |
| **stickied** | **Boolean** |  | [optional] |
| **flair_text** | **String** | Link flair text if any | [optional] |
| **is_gallery** | **Boolean** | True if the post is a Reddit gallery (multiple images) | [optional] |
| **text** | **String** | Facebook post message or Instagram caption |  |
| **thumbnail_url** | **String** | Facebook &#x60;full_picture&#x60; (or the first attachment image); Instagram &#x60;thumbnail_url&#x60; for videos, &#x60;media_url&#x60; for images. Expiring Meta CDN URL. |  |
| **media_url** | **String** | Instagram &#x60;media_url&#x60; (the video file for videos). Always null on Facebook. Expiring Meta CDN URL. |  |
| **media_type** | **String** | Instagram &#x60;media_type&#x60; (IMAGE, VIDEO, CAROUSEL_ALBUM) or the Facebook attachment type (photo, video_inline, link, ...) |  |
| **product_type** | **String** | Instagram &#x60;media_product_type&#x60;: AD, FEED, REELS or STORY. Always null on Facebook. |  |
| **created_at** | **String** | Creation time as Meta returns it (e.g. 2026-05-27T17:15:51+0000) |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxPostComments200ResponsePost.new(
  id: null,
  fullname: null,
  title: null,
  selftext: null,
  author: null,
  subreddit: null,
  permalink: null,
  url: null,
  score: null,
  num_comments: null,
  created_utc: null,
  over18: null,
  stickied: null,
  flair_text: null,
  is_gallery: null,
  text: null,
  thumbnail_url: null,
  media_url: null,
  media_type: null,
  product_type: null,
  created_at: null
)
```

