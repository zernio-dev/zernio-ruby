# Zernio::DialVoiceWebCallRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to** | **String** | The number to call, E.164 with leading +. |  |
| **credential_id** | **String** | The WebRTC credential id returned by POST /v1/voice/calls/web (the registered browser). |  |
| **from_number** | **String** | Which of your voice-enabled numbers to call from (optional when you have one). | [optional] |
| **record_override** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DialVoiceWebCallRequest.new(
  to: null,
  credential_id: null,
  from_number: null,
  record_override: null
)
```

