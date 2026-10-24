# Zernio::FacebookVisitorPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Facebook post ID (&#x60;{pageId}_{postId}&#x60;). |  |
| **message** | **String** | Text of the post. Null for media-only posts. |  |
| **created_time** | **String** | Creation time as Meta returns it (ISO 8601). |  |
| **from** | [**FacebookVisitorPostFrom**](FacebookVisitorPostFrom.md) |  |  |
| **permalink_url** | **String** | Public Facebook URL of the post. |  |
| **media** | [**FacebookVisitorPostMedia**](FacebookVisitorPostMedia.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::FacebookVisitorPost.new(
  id: null,
  message: null,
  created_time: null,
  from: null,
  permalink_url: null,
  media: null
)
```

