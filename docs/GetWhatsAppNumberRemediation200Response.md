# Zernio::GetWhatsAppNumberRemediation200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** |  | [optional] |
| **number_type** | **String** |  | [optional] |
| **decline_reason** | **String** |  | [optional] |
| **fields** | **Array&lt;Object&gt;** | Same field shape as GET /v1/whatsapp/phone-numbers/kyc. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWhatsAppNumberRemediation200Response.new(
  country: null,
  number_type: null,
  decline_reason: null,
  fields: null
)
```

