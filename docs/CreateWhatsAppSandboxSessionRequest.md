# Zernio::CreateWhatsAppSandboxSessionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone** | **String** | Recipient phone in international format. Digits, spaces, dashes and a leading &#x60;+&#x60; are all accepted; the server normalizes to E.164 digits-only. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateWhatsAppSandboxSessionRequest.new(
  phone: +34688246216
)
```

