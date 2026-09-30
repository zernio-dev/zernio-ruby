# Zernio::InboxWebhookMessageAttachmentsInnerPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voice** | **Boolean** | WhatsApp audio only. True for a voice note recorded in the WhatsApp client, false for an audio file. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InboxWebhookMessageAttachmentsInnerPayload.new(
  voice: null
)
```

