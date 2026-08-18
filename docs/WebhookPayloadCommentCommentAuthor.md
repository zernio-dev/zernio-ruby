# Zernio::WebhookPayloadCommentCommentAuthor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Author&#39;s platform ID |  |
| **username** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **picture** | **String** |  | [optional] |
| **is_own_account** | **Boolean** | True when this comment was authored by the connected account itself (Meta re-delivers the account&#39;s own replies as comments events). Populated on the Instagram and Facebook realtime webhooks only; absent means not evaluated, never \&quot;not the account\&quot;. | [optional] |
| **instagram_profile** | [**WebhookPayloadCommentCommentAuthorInstagramProfile**](WebhookPayloadCommentCommentAuthorInstagramProfile.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCommentCommentAuthor.new(
  id: null,
  username: null,
  name: null,
  picture: null,
  is_own_account: null,
  instagram_profile: null
)
```

