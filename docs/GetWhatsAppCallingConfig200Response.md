# Zernio::GetWhatsAppCallingConfig200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number_doc_id** | **String** | WhatsAppPhoneNumber Mongo ID (use on /v1/whatsapp/phone-numbers/{id}/calling) | [optional] |
| **phone_number** | **String** |  | [optional] |
| **calling_enabled** | **Boolean** |  | [optional] |
| **forward_to** | **String** | tel:+E164 / sip:... / wss://... destination | [optional] |
| **recording_enabled** | **Boolean** |  | [optional] |
| **sip_auth_username** | **String** |  | [optional] |
| **sip_auth_password_configured** | **Boolean** | True when a SIP digest password is stored. The plaintext is never returned. | [optional] |
| **call_icon_countries** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWhatsAppCallingConfig200Response.new(
  phone_number_doc_id: null,
  phone_number: null,
  calling_enabled: null,
  forward_to: null,
  recording_enabled: null,
  sip_auth_username: null,
  sip_auth_password_configured: null,
  call_icon_countries: null
)
```

