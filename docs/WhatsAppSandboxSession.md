# Zernio::WhatsAppSandboxSession

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Session id. Use this to revoke via DELETE. |  |
| **phone_e164** | **String** | Digits-only E.164 form (no +, spaces, or dashes). |  |
| **status** | **String** | &#x60;pending&#x60; until the phone replies to the activation template, then &#x60;active&#x60;. Expired sessions are pruned by TTL and never appear in list responses.  |  |
| **expires_at** | **Time** | UTC timestamp at which the session becomes invalid. Pending sessions get a 24h window; activated sessions get 7 days.  |  |
| **activated_at** | **Time** | When the session transitioned &#x60;pending → active&#x60;, or null. | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WhatsAppSandboxSession.new(
  id: null,
  phone_e164: 34688246216,
  status: null,
  expires_at: null,
  activated_at: null,
  created_at: null
)
```

