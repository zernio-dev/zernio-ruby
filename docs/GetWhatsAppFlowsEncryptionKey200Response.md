# Zernio::GetWhatsAppFlowsEncryptionKey200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_key** | **String** | The registered RSA public key in PEM format, or null when none is registered. | [optional] |
| **signature_status** | **String** | VALID (key matches Meta&#39;s records) or MISMATCH (no key registered, or the key does not match); null when unknown. | [optional] |
| **registered** | **Boolean** | Whether a key is currently registered. Derived from publicKey, not signatureStatus. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWhatsAppFlowsEncryptionKey200Response.new(
  public_key: null,
  signature_status: null,
  registered: null
)
```

