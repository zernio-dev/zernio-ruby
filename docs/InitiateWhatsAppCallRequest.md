# Zernio::InitiateWhatsAppCallRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **to** | **String** | Consumer wa_id (E.164, leading + optional) |  |
| **action** | **String** | Omit to place a call. Set to send the consent prompt instead. | [optional] |
| **body_text** | **String** | Body text shown with the consent prompt (send_call_permission_request only). | [optional] |
| **forward_to** | **String** | Per-call destination override. Same accepted shape as the number&#39;s stored forwardTo (tel:+E164, sip:..., wss://...).  | [optional] |
| **record_override** | **Boolean** |  | [optional] |
| **biz_opaque_callback_data** | **String** | Accepted for forward compatibility. Not currently echoed back in webhook payloads (SIP-first flow does not pass through Meta&#39;s Graph API where Meta would echo this).  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InitiateWhatsAppCallRequest.new(
  account_id: null,
  to: null,
  action: null,
  body_text: null,
  forward_to: null,
  record_override: null,
  biz_opaque_callback_data: null
)
```

