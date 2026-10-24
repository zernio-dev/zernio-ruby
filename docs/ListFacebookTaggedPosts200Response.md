# Zernio::ListFacebookTaggedPosts200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;FacebookTaggedPost&gt;**](FacebookTaggedPost.md) |  |  |
| **next_cursor** | **String** | Pass as &#x60;cursor&#x60; to read the next page. Null when there are no more pages. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListFacebookTaggedPosts200Response.new(
  data: null,
  next_cursor: null
)
```

