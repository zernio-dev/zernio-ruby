# Late::SendWhatsAppBulkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **recipients** | [**Array&lt;SendWhatsAppBulkRequestRecipientsInner&gt;**](SendWhatsAppBulkRequestRecipientsInner.md) | List of recipients (max 100) |  |
| **template** | [**SendWhatsAppBulkRequestTemplate**](SendWhatsAppBulkRequestTemplate.md) |  |  |

## Example

```ruby
require 'late-sdk'

instance = Late::SendWhatsAppBulkRequest.new(
  account_id: null,
  recipients: null,
  template: null
)
```

