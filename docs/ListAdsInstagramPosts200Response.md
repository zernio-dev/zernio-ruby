# Zernio::ListAdsInstagramPosts200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ig_user_id** | **String** | Instagram identity the posts belong to. |  |
| **username** | **String** | Instagram username; empty when Meta does not expose it. |  |
| **posts** | [**Array&lt;ListAdsInstagramPosts200ResponsePostsInner&gt;**](ListAdsInstagramPosts200ResponsePostsInner.md) |  |  |
| **paging** | [**ListAdsInstagramPosts200ResponsePaging**](ListAdsInstagramPosts200ResponsePaging.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAdsInstagramPosts200Response.new(
  ig_user_id: null,
  username: null,
  posts: null,
  paging: null
)
```

