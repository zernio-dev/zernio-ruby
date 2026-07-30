# Zernio::EnableWhatsAppCallingLegacyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **forward_to** | **String** | tel:+E164 / sip:... / wss://... destination |  |
| **sip_auth_username** | **String** |  | [optional] |
| **sip_auth_password** | **String** | Stored encrypted, never returned by any endpoint. | [optional] |
| **recording_enabled** | **Boolean** |  | [optional][default to false] |
| **call_icon_countries** | **Array&lt;String&gt;** |  | [optional] |
| **max_call_duration_seconds** | **Integer** | Hard cap (seconds) on a forwarded call; the carrier hangs up both legs when it fires. Safety valve against dead-air billing when a destination hangs up but the signal is lost. | [optional] |
| **forward_caller_id** | **String** | Caller ID presented to the forward destination. caller &#x3D; the WhatsApp user&#39;s number (sip: destinations only; ignored on tel: forwards). Fixes AI-agent trunks that reject seeing the business number call itself. | [optional][default to &#39;business&#39;] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EnableWhatsAppCallingLegacyRequest.new(
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

