# Late::CreateWhatsAppBroadcastRequestRecipientsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone** | **String** | Phone number in E.164 format |  |
| **name** | **String** |  | [optional] |
| **variables** | **Hash&lt;String, String&gt;** | Per-recipient template variables | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::CreateWhatsAppBroadcastRequestRecipientsInner.new(
  phone: null,
  name: null,
  variables: null
)
```

