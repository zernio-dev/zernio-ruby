# Zernio::WebhookPayloadCallPermissionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **event** | **String** |  |  |
| **permission** | [**WebhookPayloadCallPermissionRequestPermission**](WebhookPayloadCallPermissionRequestPermission.md) |  |  |
| **account** | [**InboxWebhookAccount**](InboxWebhookAccount.md) |  |  |
| **timestamp** | **Time** | UTC time at which Zernio generated this event (set once when the event payload is built, before delivery is queued). Retries and redeliveries keep the original value, so it reflects the event, not the delivery attempt. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCallPermissionRequest.new(
  id: null,
  event: null,
  permission: null,
  account: null,
  timestamp: null
)
```

