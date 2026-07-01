# Zernio::SyncExternalPostsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | SocialAccount ID whose posts to sync. Must be connected to Zernio. |  |
| **url** | **String** | The post URL to locate. Optional. Provide &#x60;url&#x60; or &#x60;postId&#x60; to return a specific post; omit both to just refresh and return the account&#39;s recent posts. | [optional] |
| **post_id** | **String** | The platform post/media/video id to locate, as an alternative to &#x60;url&#x60;. Optional. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SyncExternalPostsRequest.new(
  account_id: null,
  url: null,
  post_id: null
)
```

