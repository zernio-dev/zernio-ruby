# Zernio::ListBlogs200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |
| **blogs** | [**Array&lt;Blog&gt;**](Blog.md) |  | [optional] |
| **next_cursor** | **String** | Cursor for the next page; null when there are no more pages. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListBlogs200Response.new(
  platform: null,
  blogs: null,
  next_cursor: null
)
```

