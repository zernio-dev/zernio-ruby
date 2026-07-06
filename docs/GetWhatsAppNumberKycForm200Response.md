# Zernio::GetWhatsAppNumberKycForm200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** |  | [optional] |
| **number_type** | **String** |  | [optional] |
| **fields** | [**Array&lt;GetWhatsAppNumberKycForm200ResponseFieldsInner&gt;**](GetWhatsAppNumberKycForm200ResponseFieldsInner.md) |  | [optional] |
| **reusable** | [**GetPhoneNumberKycForm200ResponseReusable**](GetPhoneNumberKycForm200ResponseReusable.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWhatsAppNumberKycForm200Response.new(
  country: null,
  number_type: null,
  fields: null,
  reusable: null
)
```

