# Zernio::CreateWhatsAppTemplate200ResponseTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **status** | **String** | APPROVED for library templates, PENDING for custom | [optional] |
| **category** | **String** |  | [optional] |
| **language** | **String** |  | [optional] |
| **message_send_ttl_seconds** | **Integer** | Echoed when supplied on the request. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateWhatsAppTemplate200ResponseTemplate.new(
  id: null,
  name: null,
  status: null,
  category: null,
  language: null,
  message_send_ttl_seconds: null
)
```

