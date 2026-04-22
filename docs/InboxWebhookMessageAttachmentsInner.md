# Zernio::InboxWebhookMessageAttachmentsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Attachment type (image, video, file, sticker, audio) |  |
| **url** | **String** | Attachment URL (may expire for Meta platforms) |  |
| **payload** | **Object** | Additional attachment metadata | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InboxWebhookMessageAttachmentsInner.new(
  type: null,
  url: null,
  payload: null
)
```

