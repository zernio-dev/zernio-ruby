# Zernio::GetAccountPosts200ResponsePostsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The platform&#39;s own post id (the video ID on YouTube) | [optional] |
| **platform** | **String** |  | [optional] |
| **message** | **String** | Caption or title, empty string when the post has no text | [optional] |
| **created_time** | **Time** |  | [optional] |
| **permalink** | **String** | Public URL of the post on the platform | [optional] |
| **picture** | **String** | Thumbnail or media URL | [optional] |
| **media_type** | **String** |  | [optional] |
| **comment_count** | **Integer** |  | [optional] |
| **like_count** | **Integer** |  | [optional] |
| **reaction_count** | **Integer** | Facebook and LinkedIn only | [optional] |
| **share_count** | **Integer** |  | [optional] |
| **cid** | **String** | Bluesky content id, required to reply to the post | [optional] |
| **subreddit** | **String** | Reddit only | [optional] |
| **title** | **String** | Pinterest only: native Pin title | [optional] |
| **description** | **String** | Pinterest only: full native Pin description (Pinterest caps it at 800 characters) | [optional] |
| **link** | **String** | Pinterest only: destination URL of the Pin, not the Pin page (see permalink) | [optional] |
| **board_id** | **String** | Pinterest only: id of the board holding the Pin | [optional] |
| **board_owner_username** | **String** | Pinterest only: username of the board owner | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAccountPosts200ResponsePostsInner.new(
  id: null,
  platform: null,
  message: null,
  created_time: null,
  permalink: null,
  picture: null,
  media_type: null,
  comment_count: null,
  like_count: null,
  reaction_count: null,
  share_count: null,
  cid: null,
  subreddit: null,
  title: null,
  description: null,
  link: null,
  board_id: null,
  board_owner_username: null
)
```

