# Late::RedditPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Reddit post ID (without type prefix) | [optional] |
| **fullname** | **String** | Reddit fullname (e.g. t3_abc123) | [optional] |
| **title** | **String** |  | [optional] |
| **author** | **String** |  | [optional] |
| **subreddit** | **String** |  | [optional] |
| **url** | **String** | Post URL (may be a gallery URL | [optional] |
| **permalink** | **String** | Full permalink to the Reddit post | [optional] |
| **selftext** | **String** | Self-post body text (empty string for link posts) | [optional] |
| **created_utc** | **Float** | Unix timestamp of post creation | [optional] |
| **score** | **Integer** |  | [optional] |
| **num_comments** | **Integer** |  | [optional] |
| **over18** | **Boolean** | Whether the post is marked NSFW | [optional] |
| **stickied** | **Boolean** |  | [optional] |
| **flair_text** | **String** | Link flair text if set | [optional] |
| **is_gallery** | **Boolean** | Whether the post is a gallery with multiple images | [optional] |
| **gallery_images** | **Array&lt;String&gt;** | Individual image URLs for gallery posts (only present when isGallery is true) | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::RedditPost.new(
  id: null,
  fullname: null,
  title: null,
  author: null,
  subreddit: null,
  url: null,
  permalink: null,
  selftext: null,
  created_utc: null,
  score: null,
  num_comments: null,
  over18: null,
  stickied: null,
  flair_text: null,
  is_gallery: null,
  gallery_images: null
)
```

