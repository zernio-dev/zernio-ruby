# Zernio::ListBlogArticles200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |
| **articles** | [**Array&lt;BlogArticle&gt;**](BlogArticle.md) |  | [optional] |
| **next_cursor** | **String** | Cursor for the next page; null when there are no more pages. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListBlogArticles200Response.new(
  platform: null,
  articles: null,
  next_cursor: null
)
```

