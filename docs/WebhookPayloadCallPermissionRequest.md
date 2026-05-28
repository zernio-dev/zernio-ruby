# Zernio::WebhookPayloadCallPermissionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **event** | **String** |  |  |
| **permission** | [**WebhookPayloadCallPermissionRequestPermission**](WebhookPayloadCallPermissionRequestPermission.md) |  |  |
| **account** | [**InboxWebhookAccount**](InboxWebhookAccount.md) |  |  |
| **timestamp** | **Time** |  |  |

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

