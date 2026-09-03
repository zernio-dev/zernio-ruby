# Zernio::SetWhatsAppFlowsEncryptionKeyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **business_public_key** | **String** | RSA public key in PEM format. Rejected if it is a private key or not a valid RSA public key PEM. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SetWhatsAppFlowsEncryptionKeyRequest.new(
  account_id: null,
  business_public_key: null
)
```

