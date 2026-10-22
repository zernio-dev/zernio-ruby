# Zernio::InstagramMentionedComment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Instagram comment ID of the comment that mentions the account. |  |
| **text** | **String** |  |  |
| **timestamp** | **String** | Creation time as Meta returns it (ISO 8601). |  |
| **like_count** | **Integer** |  |  |
| **media** | [**InstagramMentionedCommentMedia**](InstagramMentionedCommentMedia.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InstagramMentionedComment.new(
  id: null,
  text: null,
  timestamp: null,
  like_count: null,
  media: null
)
```

