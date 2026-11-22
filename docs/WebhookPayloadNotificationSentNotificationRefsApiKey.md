# Zernio::WebhookPayloadNotificationSentNotificationRefsApiKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The handed-over API key id. |  |
| **key_preview** | **String** | The key prefix and suffix, never the secret. |  |
| **expires_at** | **Time** | When the handed-over key stops working. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadNotificationSentNotificationRefsApiKey.new(
  id: null,
  key_preview: null,
  expires_at: null
)
```

