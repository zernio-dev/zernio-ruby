# Zernio::DeleteWhatsAppTemplate200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **scope** | **String** | Whether the whole family or one variant was deleted. | [optional] |
| **language** | **String** | The deleted variant; only when scope is language. | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DeleteWhatsAppTemplate200Response.new(
  success: null,
  scope: null,
  language: null,
  message: null
)
```

