# Zernio::DialVoiceWebCallRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to** | **String** | The number to call, E.164 with leading +. |  |
| **credential_id** | **String** | The WebRTC credential id returned by POST /v1/voice/calls/web (the registered browser). |  |
| **from_number** | **String** | Which of your voice-enabled numbers to call from (optional when you have one). | [optional] |
| **record_override** | **Boolean** |  | [optional] |
| **ring_timeout_seconds** | **Integer** | Seconds to let the callee&#39;s phone ring before the call ends as no_answer. The destination carrier can end it sooner. | [optional][default to 30] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DialVoiceWebCallRequest.new(
  to: null,
  credential_id: null,
  from_number: null,
  record_override: null,
  ring_timeout_seconds: null
)
```

