# Zernio::WebhookPayloadMessageSentMetadataTemplateHeader

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** | Header format. |  |
| **text** | **String** | Text headers only. The header text with its variables filled in. | [optional] |
| **media_url** | **String** | Image, video and document headers only. The link the send carried. Absent when the media was sent by id or the link is on Meta&#39;s CDN (an expiring URL, such as the approval sample). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMessageSentMetadataTemplateHeader.new(
  format: null,
  text: null,
  media_url: null
)
```

