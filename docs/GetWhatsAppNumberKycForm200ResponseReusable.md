# Zernio::GetWhatsAppNumberKycForm200ResponseReusable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available** | **Boolean** |  | [optional] |
| **from_phone_number** | **String** |  | [optional] |
| **details** | [**Array&lt;GetWhatsAppNumberKycForm200ResponseReusableDetailsInner&gt;**](GetWhatsAppNumberKycForm200ResponseReusableDetailsInner.md) | Human-readable summary of the verification on file (field labels + values, plus the address as one line). Best-effort — may be empty if the provider lookup fails. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWhatsAppNumberKycForm200ResponseReusable.new(
  available: null,
  from_phone_number: null,
  details: null
)
```

