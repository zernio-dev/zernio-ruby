# Zernio::LikePost200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **post_id** | **String** | The resolved native post ID | [optional] |
| **platform** | **String** |  | [optional] |
| **liked** | **Boolean** |  | [optional] |
| **like_uri** | **String** | (Bluesky only) URI to use for unliking | [optional] |
| **already_reacted** | **Boolean** | LinkedIn only: the account already had this exact reaction, so nothing was created | [optional] |
| **reaction_type** | **String** | LinkedIn only: the reaction type now in effect | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LikePost200Response.new(
  status: null,
  post_id: null,
  platform: null,
  liked: null,
  like_uri: null,
  already_reacted: null,
  reaction_type: null
)
```

