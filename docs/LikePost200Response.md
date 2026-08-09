# Zernio::LikePost200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **post_id** | **String** | The resolved native post ID | [optional] |
| **platform** | **String** |  | [optional] |
| **liked** | **Boolean** |  | [optional] |
| **like_uri** | **String** | (Bluesky only) URI to use for unliking | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LikePost200Response.new(
  status: null,
  post_id: null,
  platform: null,
  liked: null,
  like_uri: null
)
```

