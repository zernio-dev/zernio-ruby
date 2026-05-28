# Zernio::WebhookPayloadCallFailedCall

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
| **failed_at** | **Time** |  | [optional] |
| **error** | [**WebhookPayloadCallFailedCallError**](WebhookPayloadCallFailedCallError.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCallFailedCall.new(
  id: null,
  meta_call_id: null,
  account_id: null,
  phone_number_id: null,
  direction: null,
  from: null,
  to: null,
  failed_at: null,
  error: null
)
```

