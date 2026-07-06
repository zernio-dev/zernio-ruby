# Zernio::GetWhatsAppCalling200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** |  | [optional] |
| **calling_enabled** | **Boolean** |  | [optional] |
| **call_deep_link** | **String** | Public calling deep link (https://wa.me/call/&lt;number&gt;). Null while calling is disabled. | [optional] |
| **forward_to** | **String** | tel:+E164 / sip:... / wss://... destination | [optional] |
| **recording_enabled** | **Boolean** |  | [optional] |
| **sip_auth_username** | **String** |  | [optional] |
| **sip_auth_password_configured** | **Boolean** | True when a SIP digest password is stored. The plaintext is never returned. | [optional] |
| **call_icon_countries** | **Array&lt;String&gt;** |  | [optional] |
| **outbound_disabled** | **Boolean** | True when the number&#39;s country blocks business-initiated (outbound) WhatsApp calling; inbound still works. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWhatsAppCalling200Response.new(
  phone_number: null,
  calling_enabled: null,
  call_deep_link: null,
  forward_to: null,
  recording_enabled: null,
  sip_auth_username: null,
  sip_auth_password_configured: null,
  call_icon_countries: null,
  outbound_disabled: null
)
```

