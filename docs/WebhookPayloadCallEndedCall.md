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
  recording_url: null,
  recording_expires_at: null,
  billing: null
)
```

