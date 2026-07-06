# Zernio::EnableVoiceOnNumber200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** |  | [optional] |
| **phone_number** | **String** |  | [optional] |
| **pstn_forward_to** | **String** |  | [optional] |
| **recording_enabled** | **Boolean** |  | [optional] |
| **transcription_enabled** | **Boolean** |  | [optional] |
| **transcription_language** | **String** |  | [optional] |
| **voicemail_enabled** | **Boolean** |  | [optional] |
| **voicemail_greeting** | **String** |  | [optional] |
| **business_hours_enabled** | **Boolean** |  | [optional] |
| **business_hours_timezone** | **String** |  | [optional] |
| **business_hours** | [**Array&lt;EnableVoiceOnNumber200ResponseBusinessHoursInner&gt;**](EnableVoiceOnNumber200ResponseBusinessHoursInner.md) |  | [optional] |
| **blocked_callers** | **Array&lt;String&gt;** |  | [optional] |
| **forward_caller_id** | **String** |  | [optional] |
| **ivr_enabled** | **Boolean** |  | [optional] |
| **ivr_prompt** | **String** |  | [optional] |
| **ivr_options** | [**Array&lt;EnableVoiceOnNumber200ResponseIvrOptionsInner&gt;**](EnableVoiceOnNumber200ResponseIvrOptionsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EnableVoiceOnNumber200Response.new(
  enabled: null,
  phone_number: null,
  pstn_forward_to: null,
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

