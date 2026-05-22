# Zernio::GetInboxPostComments200ResponsePost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Reddit post base36 id (e.g. \&quot;1tjtj26\&quot;) | [optional] |
| **fullname** | **String** | Fullname with type prefix (e.g. \&quot;t3_1tjtj26\&quot;) | [optional] |
| **title** | **String** |  | [optional] |
| **selftext** | **String** | Body text for self-posts (empty for link posts) | [optional] |
| **author** | **String** | Reddit username | [optional] |
| **subreddit** | **String** | Subreddit name | [optional] |
| **permalink** | **String** | Absolute URL to the post on reddit.com | [optional] |
| **url** | **String** | For link posts | [optional] |
| **score** | **Integer** | Net upvotes (upvotes minus downvotes) | [optional] |
| **num_comments** | **Integer** |  | [optional] |
| **created_utc** | **Integer** | Unix timestamp in seconds | [optional] |
| **over18** | **Boolean** |  | [optional] |
| **stickied** | **Boolean** |  | [optional] |
| **flair_text** | **String** | Link flair text if any | [optional] |
| **is_gallery** | **Boolean** | True if the post is a Reddit gallery (multiple images) | [optional] |

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
  is_gallery: null
)
```

