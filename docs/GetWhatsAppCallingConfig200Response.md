# Zernio::GetWhatsAppCallingConfig200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number_doc_id** | **String** | Phone number record ID (use on /v1/phone-numbers/{id}/whatsapp/calling) | [optional] |
| **phone_number** | **String** |  | [optional] |
| **calling_enabled** | **Boolean** |  | [optional] |
| **call_deep_link** | **String** | Public calling deep link (https://wa.me/call/&lt;number&gt;). Tapping it on a phone starts a WhatsApp voice call to this number. Embed it on websites, emails, or QR codes. Null while calling is disabled; not supported by WhatsApp desktop clients. | [optional] |
| **forward_to** | **String** | tel:+E164 / sip:... / wss://... destination | [optional] |
| **recording_enabled** | **Boolean** |  | [optional] |
| **sip_auth_username** | **String** |  | [optional] |
| **sip_auth_password_configured** | **Boolean** | True when a SIP digest password is stored. The plaintext is never returned. | [optional] |
| **call_icon_countries** | **Array&lt;String&gt;** |  | [optional] |
| **caller_id_mode** | **String** | Caller ID the forward-leg callee sees on tel: forwards. business &#x3D; this WhatsApp number; platform &#x3D; a Zernio number (customer-brought number without verified caller ID; verify via /v1/phone-numbers/{id}/whatsapp/caller-id-verification). | [optional] |
| **caller_id_verified** | **Boolean** | True once the number completed caller-ID verification. | [optional] |
| **max_call_duration_seconds** | **Integer** | Hard cap (seconds) on forwarded calls; null &#x3D; no cap. | [optional] |
| **forward_caller_id** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWhatsAppCallingConfig200Response.new(
  phone_number_doc_id: null,
  phone_number: null,
  calling_enabled: null,
  call_deep_link: null,
  forward_to: null,
  recording_enabled: null,
  sip_auth_username: null,
  sip_auth_password_configured: null,
  call_icon_countries: null,
  caller_id_mode: null,
  caller_id_verified: null,
  max_call_duration_seconds: null,
  forward_caller_id: null
)
```

