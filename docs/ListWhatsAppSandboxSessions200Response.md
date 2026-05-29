# Zernio::ListWhatsAppSandboxSessions200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sessions** | [**Array&lt;WhatsAppSandboxSession&gt;**](WhatsAppSandboxSession.md) |  | [optional] |
| **sandbox_number** | **String** | The shared sandbox phone number in E.164 form. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListWhatsAppSandboxSessions200Response.new(
  sessions: null,
  sandbox_number: +12029087457
)
```

