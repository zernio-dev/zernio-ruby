# Zernio::SetRedditPostFlairRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subreddit** | **String** | Subreddit name (without the \&quot;r/\&quot; prefix) |  |
| **post_id** | **String** | Reddit post id, with or without the t3_ prefix |  |
| **flair_template_id** | **String** | Flair template id from the GET on this path |  |
| **text** | **String** | Optional override text, only for editable flair templates | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SetRedditPostFlairRequest.new(
  subreddit: null,
  post_id: null,
  flair_template_id: null,
  text: null
)
```

