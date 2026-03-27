# Late::WebhookPayloadMessageMessageAttachmentsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Attachment type (image, video, file, sticker, audio) |  |
| **url** | **String** | Attachment URL (may expire for Meta platforms) |  |
| **payload** | **Object** | Additional attachment metadata | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::WebhookPayloadMessageMessageAttachmentsInner.new(
  type: null,
  url: null,
  payload: null
)
```

