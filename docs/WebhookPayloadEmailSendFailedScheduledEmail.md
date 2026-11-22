# Zernio::WebhookPayloadEmailSendFailedScheduledEmail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The &#x60;scheduleId&#x60;. | [optional] |
| **scheduled_for** | **Time** |  | [optional] |
| **error** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadEmailSendFailedScheduledEmail.new(
  id: null,
  scheduled_for: null,
  error: null,
  metadata: null
)
```

