# Zernio::WebhookPayloadNotificationSentNotification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | **String** | The email notification preference this notification belongs to. securityAlerts has no preference: it is always sent. |  |
| **type** | **String** |  |  |
| **subject** | **String** | The email subject. |  |
| **text** | **String** | The email body as plain text, without the greeting. |  |
| **url** | **String** | Dashboard link for the notification. |  |
| **refs** | [**WebhookPayloadNotificationSentNotificationRefs**](WebhookPayloadNotificationSentNotificationRefs.md) |  |  |
| **reason** | **String** | Why the account was disconnected. Only on account_disconnected. | [optional] |
| **actions** | [**Array&lt;WebhookPayloadNotificationSentNotificationActionsInner&gt;**](WebhookPayloadNotificationSentNotificationActionsInner.md) | API calls that act on the notification, with the ids already in the path. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadNotificationSentNotification.new(
  category: null,
  type: null,
  subject: null,
  text: null,
  url: null,
  refs: null,
  reason: null,
  actions: null
)
```

