# Zernio::WebhookPayloadCallEndedCall

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **meta_call_id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **phone_number_id** | **String** |  | [optional] |
| **direction** | **String** |  | [optional] |
| **from** | **String** |  | [optional] |
| **to** | **String** |  | [optional] |
| **started_at** | **Time** |  | [optional] |
| **ended_at** | **Time** |  | [optional] |
| **duration_seconds** | **Integer** |  | [optional] |
| **end_reason** | **String** |  | [optional] |
| **hangup_cause** | **String** | Raw carrier hangup cause behind endReason (e.g. normal_clearing, call_rejected, not_found). Null when the carrier reported none. | [optional] |
| **sip_hangup_cause** | **String** | SIP response code that ended the call when SIP-signalled (e.g. &#39;403&#39;, &#39;486&#39;, &#39;603&#39;). endReason collapses all three to &#39;rejected&#39;, so this is what separates a refused destination from a busy line. Null on non-SIP legs. | [optional] |
| **is_voicemail** | **Boolean** | True when the inbound call was handled by voicemail, whether scheduled or because the forward did not connect. | [optional] |
| **call_errors** | [**Array&lt;CallRecordCallErrorsInner&gt;**](CallRecordCallErrorsInner.md) | Failures recorded on the call up to hangup (bridge failed, dial failed, recording error). Empty on a clean call. &#x60;message&#x60; is free-form diagnostic text and is not stable, do not parse it. &#x60;code&#x60; is 0 unless a provider code is known. Errors the carrier reports after hangup appear only on GET /v1/calls/{id}. | [optional] |
| **recording_url** | **String** |  | [optional] |
| **recording_expires_at** | **Time** |  | [optional] |
| **billing** | [**WebhookPayloadCallEndedCallBilling**](WebhookPayloadCallEndedCallBilling.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCallEndedCall.new(
  id: null,
  meta_call_id: null,
  account_id: null,
  phone_number_id: null,
  direction: null,
  from: null,
  to: null,
  started_at: null,
  ended_at: null,
  duration_seconds: null,
  end_reason: null,
  hangup_cause: null,
  sip_hangup_cause: null,
  is_voicemail: null,
  call_errors: null,
  recording_url: null,
  recording_expires_at: null,
  billing: null
)
```

