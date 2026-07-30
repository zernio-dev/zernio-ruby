# Zernio::EnableWhatsAppCallingLegacy200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **calling_enabled** | **Boolean** |  | [optional] |
| **sip_hostname** | **String** |  | [optional] |
| **forward_to** | **String** |  | [optional] |
| **caller_id_mode** | **String** | Caller ID the forward-leg callee sees on tel: forwards. business &#x3D; this WhatsApp number; platform &#x3D; a Zernio number (customer-brought number without verified caller ID). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EnableWhatsAppCallingLegacy200Response.new(
  success: null,
  calling_enabled: null,
  sip_hostname: null,
  forward_to: null,
  caller_id_mode: null
)
```

