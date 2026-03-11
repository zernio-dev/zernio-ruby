# Late::CreateWhatsAppTemplateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **name** | **String** | Template name (lowercase, letters/numbers/underscores, must start with a letter) |  |
| **category** | **String** | Template category |  |
| **language** | **String** | Template language code (e.g., en_US) |  |
| **components** | **Array&lt;Object&gt;** | Template components (header, body, footer, buttons) |  |

## Example

```ruby
require 'late-sdk'

instance = Late::CreateWhatsAppTemplateRequest.new(
  account_id: null,
  name: null,
  category: null,
  language: null,
  components: null
)
```

