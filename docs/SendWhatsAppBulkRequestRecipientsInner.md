# Late::SendWhatsAppBulkRequestRecipientsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone** | **String** | Recipient phone number in E.164 format |  |
| **variables** | **Hash&lt;String, String&gt;** | Per-recipient template variables keyed by index (e.g., \&quot;1\&quot;, \&quot;2\&quot;) | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::SendWhatsAppBulkRequestRecipientsInner.new(
  phone: null,
  variables: null
)
```

