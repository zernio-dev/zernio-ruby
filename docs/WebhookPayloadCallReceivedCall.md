# Zernio::WebhookPayloadCallReceivedCall

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
| **forward_to** | **String** | Destination snapshot at routing time | [optional] |
| **contact_id** | **String** |  | [optional] |
| **conversation_id** | **String** |  | [optional] |
| **started_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCallReceivedCall.new(
  id: null,
  meta_call_id: null,
  account_id: null,
  phone_number_id: null,
  direction: null,
  from: null,
  to: null,
  forward_to: null,
  contact_id: null,
  conversation_id: null,
  started_at: null
)
```

