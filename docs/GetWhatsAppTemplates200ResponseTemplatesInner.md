# Zernio::GetWhatsAppTemplates200ResponseTemplatesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | WhatsApp template ID | [optional] |
| **name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **category** | **String** |  | [optional] |
| **language** | **String** |  | [optional] |
| **message_send_ttl_seconds** | **Integer** | Only when a custom TTL is set; absent while the category default applies. | [optional] |
| **components** | **Array&lt;Object&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWhatsAppTemplates200ResponseTemplatesInner.new(
  id: null,
  name: null,
  status: null,
  category: null,
  language: null,
  message_send_ttl_seconds: null,
  components: null
)
```

