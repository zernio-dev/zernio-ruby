# Late::UpdateWhatsAppDisplayNameRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **display_name** | **String** | New display name (must follow WhatsApp naming guidelines) |  |

## Example

```ruby
require 'late-sdk'

instance = Late::UpdateWhatsAppDisplayNameRequest.new(
  account_id: null,
  display_name: null
)
```

