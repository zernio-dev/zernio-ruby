# Zernio::WebhookPayloadEmailSentEmail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **String** | Provider id of the sent mail. | [optional] |
| **thread_id** | **String** |  | [optional] |
| **tracking_id** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |
| **subject** | **String** |  | [optional] |
| **from** | [**EmailAddress**](EmailAddress.md) |  | [optional] |
| **to** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  | [optional] |
| **cc** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  | [optional] |
| **bcc** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  | [optional] |
| **sent_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadEmailSentEmail.new(
  message_id: null,
  thread_id: null,
  tracking_id: null,
  metadata: null,
  subject: null,
  from: null,
  to: null,
  cc: null,
  bcc: null,
  sent_at: null
)
```

