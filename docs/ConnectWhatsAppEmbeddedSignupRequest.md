# Zernio::ConnectWhatsAppEmbeddedSignupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Authorization code from the WA_EMBEDDED_SIGNUP postMessage |  |
| **profile_id** | **String** |  |  |
| **waba_id** | **String** | WhatsApp Business Account id, when the SDK reported one | [optional] |
| **phone_number_id** | **String** |  | [optional] |
| **is_coexistence** | **Boolean** | Number is also live in the WhatsApp Business app | [optional] |
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

