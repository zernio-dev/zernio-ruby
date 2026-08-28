# Zernio::UpdateWhatsAppTemplateById200ResponseTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **language** | **String** |  | [optional] |
| **status** | **String** | Approval state read back from Meta after the update, normally PENDING. If the state cannot be read back, the last known status is returned instead. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateWhatsAppTemplateById200ResponseTemplate.new(
  id: null,
  name: null,
  language: null,
  status: PENDING
)
```

