# Zernio::UpdateWhatsAppTemplateByIdRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **components** | [**Array&lt;WhatsAppTemplateComponent&gt;**](WhatsAppTemplateComponent.md) | Updated template components |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateWhatsAppTemplateByIdRequest.new(
  account_id: null,
  components: null
)
```

