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
| **redirect_url** | **String** | Hosted signup page only. When present, the response also carries &#x60;redirectUrl&#x60;, the URL the user should land on, with the outcome mapped exactly like the redirect flow (success params, or &#x60;error&#x60; and &#x60;platform&#x60; with the same values). Must be an absolute http(s) URL or a custom app scheme. | [optional] |
| **echo_connect_token** | **Boolean** | Hosted signup page only. Append the connect token to the success redirect, as the redirect flow does for API-key callers. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectWhatsAppEmbeddedSignupRequest.new(
  code: null,
  profile_id: null,
  waba_id: null,
  phone_number_id: null,
  is_coexistence: null,
  expected_phone_number: null,
  redirect_url: null,
  echo_connect_token: null
)
```

