# Zernio::UpdateWhatsAppCallingLegacyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **forward_to** | **String** |  | [optional] |
| **sip_auth_username** | **String** |  | [optional] |
| **sip_auth_password** | **String** |  | [optional] |
| **recording_enabled** | **Boolean** |  | [optional] |
| **call_icon_countries** | **Array&lt;String&gt;** |  | [optional] |
| **max_call_duration_seconds** | **Integer** | Hard cap (seconds) on forwarded calls; null clears the cap. | [optional] |
| **forward_caller_id** | **String** | caller &#x3D; present the WhatsApp user&#39;s number to the forward destination (sip: only). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateWhatsAppCallingLegacyRequest.new(
  account_id: null,
  forward_to: null,
  sip_auth_username: null,
  sip_auth_password: null,
  recording_enabled: null,
  call_icon_countries: null,
  max_call_duration_seconds: null,
  forward_caller_id: null
)
```

