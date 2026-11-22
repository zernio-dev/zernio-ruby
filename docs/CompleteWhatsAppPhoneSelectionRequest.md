# Zernio::CompleteWhatsAppPhoneSelectionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | The Zernio profile ID |  |
| **phone_number_id** | **String** | The selected phone number ID (from listWhatsAppPhoneNumbers) |  |
| **waba_id** | **String** | The WABA ID containing the selected phone |  |
| **temp_token** | **String** | The temporary access token from the headless redirect. Required unless sent in the X-Temp-Token header. | [optional] |
| **connect_flow** | **String** | Set by the Zernio-hosted picker, whose user token stays in an httpOnly cookie. Integrators send tempToken instead. | [optional] |
| **user_profile** | **Object** | Optional user profile data (passthrough) | [optional] |
| **redirect_url** | **String** | Optional URL to receive the post-connection redirect target | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CompleteWhatsAppPhoneSelectionRequest.new(
  profile_id: null,
  phone_number_id: null,
  waba_id: null,
  temp_token: null,
  connect_flow: null,
  user_profile: null,
  redirect_url: null
)
```

