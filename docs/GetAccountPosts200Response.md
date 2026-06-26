# Zernio::GetAccountPosts200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **posts** | [**Array&lt;GetAccountPosts200ResponsePostsInner&gt;**](GetAccountPosts200ResponsePostsInner.md) |  | [optional] |
| **last_updated** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAccountPosts200Response.new(
  status: success,
  posts: null,
  last_updated: null
)
```

