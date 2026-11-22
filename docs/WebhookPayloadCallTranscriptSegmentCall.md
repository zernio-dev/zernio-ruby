# Zernio::WebhookPayloadCallTranscriptSegmentCall

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Internal Zernio Call doc id | [optional] |
| **meta_call_id** | **String** | Meta wacid.* call id when known | [optional] |
| **account_id** | **String** |  | [optional] |
| **phone_number_id** | **String** | Meta phone_number_id | [optional] |
| **direction** | **String** |  | [optional] |
| **from** | **String** | Consumer wa_id / E.164 | [optional] |
| **to** | **String** | Business number (E.164) | [optional] |
| **contact_id** | **String** |  | [optional] |
| **conversation_id** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCallTranscriptSegmentCall.new(
  id: null,
  meta_call_id: null,
  account_id: null,
  phone_number_id: null,
  direction: null,
  from: null,
  to: null,
  contact_id: null,
  conversation_id: null
)
```

