# Zernio::CreateVoiceWebInboundSession200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** |  | [optional] |
| **token** | **String** | Login token for the browser WebRTC SDK. Present when enabled. | [optional] |
| **sdk** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateVoiceWebInboundSession200Response.new(
  enabled: null,
  token: null,
  sdk: @telnyx/webrtc
)
```

