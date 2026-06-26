# Zernio::GetAccountPosts200ResponsePostsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |
| **created_time** | **Time** |  | [optional] |
| **picture** | **String** |  | [optional] |
| **permalink** | **String** |  | [optional] |
| **media_type** | **String** |  | [optional] |
| **comment_count** | **Integer** |  | [optional] |
| **like_count** | **Integer** |  | [optional] |
| **reaction_count** | **Integer** |  | [optional] |
| **share_count** | **Integer** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **cid** | **String** | Bluesky only. Content ID needed for fetching replies. | [optional] |
| **subreddit** | **String** | Reddit only. Subreddit name, needed for fetching comments. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAccountPosts200ResponsePostsInner.new(
  id: null,
  message: null,
  created_time: null,
  picture: null,
  permalink: null,
  media_type: null,
  comment_count: null,
  like_count: null,
  reaction_count: null,
  share_count: null,
  platform: null,
  cid: null,
  subreddit: null
)
```

