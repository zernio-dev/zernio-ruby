# Zernio::ConnectWhatsAppEmbeddedSignupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Authorization code from the FB.login response (authResponse.code) |  |
| **profile_id** | **String** |  |  |
| **waba_id** | **String** | waba_id from the WA_EMBEDDED_SIGNUP message event | [optional] |
| **phone_number_id** | **String** | phone_number_id from the WA_EMBEDDED_SIGNUP message event. With wabaId it skips the number picker. | [optional] |
| **is_coexistence** | **Boolean** | Set when the popup ended with the FINISH_WHATSAPP_BUSINESS_APP_ONBOARDING event, so the number stays live in the WhatsApp Business app | [optional] |
| **expected_phone_number** | **String** | Rejects the connect when Meta returns a different number | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectWhatsAppEmbeddedSignupRequest.new(
  code: null,
  profile_id: null,
  waba_id: null,
  phone_number_id: null,
  is_coexistence: null,
  expected_phone_number: null
)
```

