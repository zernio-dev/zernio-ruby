# Zernio::GetRedditPostComments200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post** | [**RedditPost**](RedditPost.md) |  | [optional] |
| **items** | [**Array&lt;RedditComment&gt;**](RedditComment.md) |  | [optional] |
| **more** | **Array&lt;String&gt;** | Ids of comments Reddit left out of this page, at any depth. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetRedditPostComments200Response.new(
  post: null,
  items: null,
  more: null
)
```

