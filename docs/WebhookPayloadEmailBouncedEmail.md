# Zernio::WebhookPayloadEmailBouncedEmail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **String** | Provider id of the sent mail. | [optional] |
| **thread_id** | **String** |  | [optional] |
| **internet_message_id** | **String** | The RFC 5322 Message-ID of the mail that bounced. | [optional] |
| **tracking_id** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |
| **subject** | **String** | From the headers the report quotes. | [optional] |
| **sent_at** | **Time** | From the headers the report quotes. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadEmailBouncedEmail.new(
  message_id: null,
  thread_id: null,
  internet_message_id: null,
  tracking_id: null,
  metadata: null,
  subject: null,
  sent_at: null
)
```

