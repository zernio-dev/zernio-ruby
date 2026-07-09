# Zernio::ReplyToMentionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The Instagram social account ID |  |
| **media_id** | **String** | The ID of the media the account was mentioned in |  |
| **comment_id** | **String** | The mentioning comment&#39;s ID. Omit for a caption mention. | [optional] |
| **message** | **String** | The reply text |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ReplyToMentionRequest.new(
  account_id: null,
  media_id: null,
  comment_id: null,
  message: null
)
```

