# Zernio::EnableWhatsAppCallingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **forward_to** | **String** | tel:+E164 / sip:... / wss://... destination |  |
| **sip_auth_username** | **String** |  | [optional] |
| **sip_auth_password** | **String** | Stored encrypted, never returned by any endpoint. | [optional] |
| **recording_enabled** | **Boolean** |  | [optional][default to false] |
| **call_icon_countries** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EnableWhatsAppCallingRequest.new(
  account_id: null,
  forward_to: null,
  sip_auth_username: null,
  sip_auth_password: null,
  recording_enabled: null,
  call_icon_countries: null
)
```

