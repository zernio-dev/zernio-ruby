# Late::UpdateWhatsAppTemplateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **components** | [**Array&lt;WhatsAppTemplateComponent&gt;**](WhatsAppTemplateComponent.md) | Updated template components |  |

## Example

```ruby
require 'late-sdk'

instance = Late::UpdateWhatsAppTemplateRequest.new(
  account_id: null,
  components: null
)
```

