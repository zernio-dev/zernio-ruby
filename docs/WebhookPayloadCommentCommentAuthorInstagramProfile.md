# Zernio::WebhookPayloadCommentCommentAuthorInstagramProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_follower** | **Boolean** | The commenter follows this account. | [optional] |
| **is_following** | **Boolean** | This account follows the commenter. | [optional] |
| **follower_count** | **Integer** |  | [optional] |
| **is_verified** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCommentCommentAuthorInstagramProfile.new(
  is_follower: null,
  is_following: null,
  follower_count: null,
  is_verified: null
)
```

