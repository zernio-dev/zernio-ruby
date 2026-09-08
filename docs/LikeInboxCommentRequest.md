# Zernio::LikeInboxCommentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The account ID |  |
| **reaction_type** | **String** | (LinkedIn only) Reaction to create. Defaults to LIKE; ignored on other platforms. | [optional] |
| **cid** | **String** | (Bluesky only) Content identifier for the comment | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LikeInboxCommentRequest.new(
  account_id: null,
  reaction_type: null,
  cid: null
)
```

