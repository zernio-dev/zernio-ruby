# Zernio::LikeInboxComment200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **comment_id** | **String** |  | [optional] |
| **liked** | **Boolean** |  | [optional] |
| **like_uri** | **String** | (Bluesky only) URI to use for unliking | [optional] |
| **already_reacted** | **Boolean** | LinkedIn only: the account already had this exact reaction, so nothing was created | [optional] |
| **reaction_type** | **String** | LinkedIn only: the reaction type now in effect | [optional] |
| **platform** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LikeInboxComment200Response.new(
  status: null,
  comment_id: null,
  liked: null,
  like_uri: null,
  already_reacted: null,
  reaction_type: null,
  platform: null
)
```

