# Late::GetWhatsAppBroadcastRecipients200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **recipients** | [**Array&lt;GetWhatsAppBroadcastRecipients200ResponseRecipientsInner&gt;**](GetWhatsAppBroadcastRecipients200ResponseRecipientsInner.md) |  | [optional] |
| **pagination** | [**GetWhatsAppContacts200ResponsePagination**](GetWhatsAppContacts200ResponsePagination.md) |  | [optional] |
| **summary** | [**GetWhatsAppBroadcastRecipients200ResponseSummary**](GetWhatsAppBroadcastRecipients200ResponseSummary.md) |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::GetWhatsAppBroadcastRecipients200Response.new(
  success: null,
  recipients: null,
  pagination: null,
  summary: null
)
```

