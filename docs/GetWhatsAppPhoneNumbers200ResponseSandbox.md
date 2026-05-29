# Zernio::GetWhatsAppPhoneNumbers200ResponseSandbox

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **template** | [**GetWhatsAppPhoneNumbers200ResponseSandboxTemplate**](GetWhatsAppPhoneNumbers200ResponseSandboxTemplate.md) |  | [optional] |
| **is_sandbox** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWhatsAppPhoneNumbers200ResponseSandbox.new(
  phone_number: +12029087457,
  account_id: null,
  template: null,
  is_sandbox: null
)
```

