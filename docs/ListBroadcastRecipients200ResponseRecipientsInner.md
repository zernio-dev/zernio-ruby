# Zernio::ListBroadcastRecipients200ResponseRecipientsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **contact_id** | **String** |  | [optional] |
| **channel_id** | **String** |  | [optional] |
| **platform_identifier** | **String** |  | [optional] |
| **contact_name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **message_id** | **String** |  | [optional] |
| **error** | **String** |  | [optional] |
| **error_code** | **Integer** | Meta WhatsApp error code (e.g. 131049 for antispam, 131021 for invalid phone, 131026 for re-engagement required). Only populated for status&#x3D;failed. | [optional] |
| **error_explanation** | **String** | Plain-language translation of errorCode (e.g. for 131026, that the recipient has likely opted out of marketing messages). Null for unmapped codes; fall back to error. | [optional] |
| **error_trace_id** | **String** | Meta trace id (fbtrace_id) for the failed send. Quote this when escalating to Meta Direct Support. Only populated for status&#x3D;failed on Meta platforms. | [optional] |
| **sent_at** | **Time** |  | [optional] |
| **delivered_at** | **Time** |  | [optional] |
| **read_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListBroadcastRecipients200ResponseRecipientsInner.new(
  id: null,
  contact_id: null,
  channel_id: null,
  platform_identifier: null,
  contact_name: null,
  status: null,
  message_id: null,
  error: null,
  error_code: null,
  error_explanation: null,
  error_trace_id: null,
  sent_at: null,
  delivered_at: null,
  read_at: null
)
```

