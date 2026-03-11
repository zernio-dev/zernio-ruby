# Late::CreateWhatsAppBroadcastRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **name** | **String** | Broadcast name |  |
| **description** | **String** | Broadcast description | [optional] |
| **template** | [**SendWhatsAppBulkRequestTemplate**](SendWhatsAppBulkRequestTemplate.md) |  |  |
| **recipients** | [**Array&lt;CreateWhatsAppBroadcastRequestRecipientsInner&gt;**](CreateWhatsAppBroadcastRequestRecipientsInner.md) | Initial recipients (optional) | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::CreateWhatsAppBroadcastRequest.new(
  account_id: null,
  name: null,
  description: null,
  template: null,
  recipients: null
)
```

