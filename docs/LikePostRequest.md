# Zernio::LikePostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The social account acting as the liker |  |
| **reaction_type** | **String** | (LinkedIn only) Reaction to create. Defaults to LIKE; ignored on other platforms. | [optional] |
| **cid** | **String** | (Bluesky only) Content identifier of the post | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LikePostRequest.new(
  account_id: null,
  reaction_type: null,
  cid: null
)
```

