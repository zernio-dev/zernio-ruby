# Zernio::WebhookPayloadMessageMetadataQuotedMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **String** | Internal id of the stored quoted message. | [optional] |
| **platform_message_id** | **String** | The STORED message&#39;s platform id (what message.sent and list-messages return). Can differ from quotedMessageId, because Meta renders one message under a different wamid per perspective. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMessageMetadataQuotedMessage.new(
  message_id: null,
  platform_message_id: null
)
```

