# Zernio::InitiateWhatsAppCall200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **call_id** | **String** | Internal Call doc ID | [optional] |
| **telnyx_call_control_id** | **String** | Telnyx call_control_id of the outbound leg | [optional] |
| **status** | **String** |  | [optional] |
| **direction** | **String** |  | [optional] |
| **to** | **String** |  | [optional] |
| **forward_to** | **String** |  | [optional] |
| **recording_enabled** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InitiateWhatsAppCall200Response.new(
  success: null,
  call_id: null,
  telnyx_call_control_id: null,
  status: null,
  direction: null,
  to: null,
  forward_to: null,
  recording_enabled: null
)
```

