# Zernio::EmailCapabilitiesSignatures

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | **String** | &#x60;read&#x60;: &#x60;appendSignature&#x60; falls back to the provider signature when no Zernio default exists. | [optional] |
| **zernio** | **Boolean** | Zernio-stored signatures (&#x60;/v1/email/signatures&#x60;) work on this mailbox. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EmailCapabilitiesSignatures.new(
  provider: null,
  zernio: null
)
```

