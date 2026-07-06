# Zernio::ListCalls200ResponseCallsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **account_id** | **String** | Owning social account. The unified /v1/calls/{id} detail + recording endpoints work for any channel; the channel-specific endpoints remain for account-scoped access. | [optional] |
| **conversation_id** | **String** | Inbox conversation with the counterparty, when one exists. | [optional] |
| **contact_id** | **String** | CRM Contact for the counterparty, when resolved. | [optional] |
| **channel** | **String** |  | [optional] |
| **direction** | **String** |  | [optional] |
| **from** | **String** | Caller number (E.164). | [optional] |
| **to** | **String** | Callee number (E.164). | [optional] |
| **forward_to** | **String** | Destination the call was routed to (tel:/sip:/wss:), snapshotted at routing time. | [optional] |
| **greeting** | **String** | Outbound PSTN only. Message spoken to the callee on answer, before the bridge. | [optional] |
| **status** | **String** |  | [optional] |
| **is_voicemail** | **Boolean** | True when an inbound call went to voicemail. | [optional] |
| **amd** | **Boolean** | Outbound answering-machine detection was requested for this call. | [optional] |
| **answered_machine** | **Boolean** | With &#x60;amd&#x60;, whether a machine (vs a human) answered. | [optional] |
| **forward_caller_id** | **String** | Caller ID presented on the forwarded leg. | [optional] |
| **recording_enabled** | **Boolean** | Effective flag for THIS call (number default + per-call override, resolved at create time). | [optional] |
| **transcription_enabled** | **Boolean** |  | [optional] |
| **transcription_language** | **String** |  | [optional] |
| **started_at** | **Time** |  | [optional] |
| **answered_at** | **Time** |  | [optional] |
| **ended_at** | **Time** |  | [optional] |
| **transferred_at** | **Time** | When the call was blind-transferred (POST /v1/voice/calls/{id}/transfer). | [optional] |
| **duration_seconds** | **Integer** |  | [optional] |
| **end_reason** | **String** |  | [optional] |
| **hangup_cause** | **String** | Raw carrier hangup cause behind endReason (e.g. normal_clearing, not_found, time_limit) — the actual motive when endReason is a coarse bucket. | [optional] |
| **sip_hangup_cause** | **String** | SIP response code that ended the call, when SIP-signalled (e.g. &#39;403&#39;, &#39;488&#39;). The real failure reason for SIP legs. | [optional] |
| **call_errors** | [**Array&lt;CallRecordCallErrorsInner&gt;**](CallRecordCallErrorsInner.md) | Per-call failure log (dial failed, bridge failed, recording error). | [optional] |
| **recording_url** | **String** | May be expired. Resolve a fresh playable URL via GET /v1/calls/{id}/recording (any channel). | [optional] |
| **last_transcript_snippet** | **String** | Most recent transcript segment, for list previews. | [optional] |
| **transcript** | [**Array&lt;CallRecordTranscriptInner&gt;**](CallRecordTranscriptInner.md) | Full transcript segments (detail endpoint only; omitted from lists). | [optional] |
| **billing** | [**CallRecordBilling**](CallRecordBilling.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **contact_name** | **String** | CRM contact name for the counterparty, when resolved. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListCalls200ResponseCallsInner.new(
  _id: null,
  account_id: null,
  conversation_id: null,
  contact_id: null,
  channel: null,
  direction: null,
  from: null,
  to: null,
  forward_to: null,
  greeting: null,
  status: null,
  is_voicemail: null,
  amd: null,
  answered_machine: null,
  forward_caller_id: null,
  recording_enabled: null,
  transcription_enabled: null,
  transcription_language: null,
  started_at: null,
  answered_at: null,
  ended_at: null,
  transferred_at: null,
  duration_seconds: null,
  end_reason: null,
  hangup_cause: null,
  sip_hangup_cause: null,
  call_errors: null,
  recording_url: null,
  last_transcript_snippet: null,
  transcript: null,
  billing: null,
  created_at: null,
  updated_at: null,
  contact_name: null
)
```

