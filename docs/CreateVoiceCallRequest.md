# Zernio::CreateVoiceCallRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to** | **String** | Destination to dial, E.164 with leading +. |  |
| **from_number** | **String** | Which of your voice-enabled numbers to dial from. Optional when you have exactly one. | [optional] |
| **forward_to** | **String** | Per-call agent override (tel:+E164, sip:..., or wss://...); defaults to the number&#39;s stored forward destination. | [optional] |
| **greeting** | **String** | Spoken to the callee when they answer, before the bridge. | [optional] |
| **record_override** | **Boolean** | Per-call recording toggle; defaults to the number&#39;s setting. | [optional] |
| **transcribe_override** | **Boolean** | Per-call transcription toggle; defaults to the number&#39;s setting. | [optional] |
| **transcription_language** | **String** | &#39;auto&#39; derives from the callee&#39;s country; &#39;en&#39;/&#39;es&#39; force it. | [optional] |
| **amd** | **Boolean** | Answering-machine detection; defers the bridge until human vs machine is known. | [optional] |
| **voicemail_drop_message** | **String** | Spoken to a detected machine, then hang up (implies &#x60;amd&#x60;). For outbound voicemail drops. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateVoiceCallRequest.new(
  to: null,
  from_number: null,
  forward_to: null,
  greeting: null,
  record_override: null,
  transcribe_override: null,
  transcription_language: null,
  amd: null,
  voicemail_drop_message: null
)
```

