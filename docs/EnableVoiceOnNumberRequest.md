# Zernio::EnableVoiceOnNumberRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **forward_to** | **String** | tel:+E164, sip:..., or wss://... destination for inbound calls. Empty string clears the forward (outbound-only); omitted preserves the current one. | [optional] |
| **recording_enabled** | **Boolean** |  | [optional] |
| **transcription_enabled** | **Boolean** |  | [optional] |
| **transcription_language** | **String** |  | [optional] |
| **voicemail_enabled** | **Boolean** | Voicemail is taken when there&#39;s no live destination. Default on. | [optional] |
| **voicemail_greeting** | **String** | Custom spoken greeting; empty string restores the default. | [optional] |
| **business_hours_enabled** | **Boolean** | Outside the windows, inbound skips the forward and goes to voicemail. Off &#x3D; 24/7. | [optional] |
| **business_hours_timezone** | **String** | IANA timezone the windows are evaluated in. | [optional] |
| **business_hours** | [**Array&lt;EnableVoiceOnNumberRequestBusinessHoursInner&gt;**](EnableVoiceOnNumberRequestBusinessHoursInner.md) |  | [optional] |
| **blocked_callers** | **Array&lt;String&gt;** | E.164 numbers rejected before answer. Replaces the whole list; bare 10-digit values are normalized as US numbers. | [optional] |
| **forward_caller_id** | **String** | Caller ID on the forwarded leg: your number (&#x60;business&#x60;) or the original caller&#39;s (&#x60;caller&#x60;). | [optional] |
| **ivr_enabled** | **Boolean** | IVR menu (supersedes the plain forward within business hours). | [optional] |
| **ivr_prompt** | **String** |  | [optional] |
| **ivr_options** | [**Array&lt;EnableVoiceOnNumberRequestIvrOptionsInner&gt;**](EnableVoiceOnNumberRequestIvrOptionsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EnableVoiceOnNumberRequest.new(
  forward_to: null,
  recording_enabled: null,
  transcription_enabled: null,
  transcription_language: null,
  voicemail_enabled: null,
  voicemail_greeting: null,
  business_hours_enabled: null,
  business_hours_timezone: null,
  business_hours: null,
  blocked_callers: null,
  forward_caller_id: null,
  ivr_enabled: null,
  ivr_prompt: null,
  ivr_options: null
)
```

