# Zernio::ListWhatsAppCalls200ResponseCallsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **direction** | **String** |  | [optional] |
| **from** | **String** |  | [optional] |
| **to** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **started_at** | **Time** |  | [optional] |
| **ended_at** | **Time** |  | [optional] |
| **duration_seconds** | **Integer** |  | [optional] |
| **end_reason** | **String** |  | [optional] |
| **recording_url** | **String** |  | [optional] |
| **billing** | [**ListWhatsAppCalls200ResponseCallsInnerBilling**](ListWhatsAppCalls200ResponseCallsInnerBilling.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListWhatsAppCalls200ResponseCallsInner.new(
  _id: null,
  direction: null,
  from: null,
  to: null,
  status: null,
  started_at: null,
  ended_at: null,
  duration_seconds: null,
  end_reason: null,
  recording_url: null,
  billing: null
)
```

