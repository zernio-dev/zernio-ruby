# Zernio::CreateVoiceWebSession200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **token** | **String** | Login token for the browser WebRTC SDK. | [optional] |
| **credential_id** | **String** | Pass to POST /v1/voice/calls/web/dial once the browser is registered. | [optional] |
| **expires_at** | **Time** |  | [optional] |
| **sdk** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateVoiceWebSession200Response.new(
  success: null,
  token: null,
  credential_id: null,
  expires_at: null,
  sdk: @telnyx/webrtc
)
```

