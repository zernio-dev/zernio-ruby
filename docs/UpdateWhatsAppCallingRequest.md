# Zernio::UpdateWhatsAppCallingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **forward_to** | **String** |  | [optional] |
| **sip_auth_username** | **String** |  | [optional] |
| **sip_auth_password** | **String** |  | [optional] |
| **recording_enabled** | **Boolean** |  | [optional] |
| **call_icon_countries** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateWhatsAppCallingRequest.new(
  account_id: null,
  forward_to: null,
  sip_auth_username: null,
  sip_auth_password: null,
  recording_enabled: null,
  call_icon_countries: null
)
```

