# Zernio::CreateVoiceCall200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **call_id** | **String** | Internal Call doc ID | [optional] |
| **telnyx_call_control_id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **direction** | **String** |  | [optional] |
| **from** | **String** |  | [optional] |
| **to** | **String** |  | [optional] |
| **forward_to** | **String** |  | [optional] |
| **greeting** | **String** |  | [optional] |
| **recording_enabled** | **Boolean** |  | [optional] |
| **transcription_enabled** | **Boolean** |  | [optional] |
| **transcription_language** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateVoiceCall200Response.new(
  success: null,
  call_id: null,
  telnyx_call_control_id: null,
  status: null,
  direction: null,
  from: null,
  to: null,
  forward_to: null,
  greeting: null,
  recording_enabled: null,
  transcription_enabled: null,
  transcription_language: null
)
```

