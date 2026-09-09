# Zernio::RequestWhatsAppVerificationCodeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **method** | **String** |  | [optional][default to &#39;SMS&#39;] |
| **language** | **String** | Meta locale code for the verification message, e.g. en_US. | [optional][default to &#39;en_US&#39;] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RequestWhatsAppVerificationCodeRequest.new(
  method: null,
  language: null
)
```

