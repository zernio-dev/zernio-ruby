# Zernio::AttachBrandedCallingNumbersRequestSignature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_base64** | **String** | The signer&#39;s drawn signature as a PNG, base64 (a data:image/png;base64 prefix is accepted). |  |
| **signer_name** | **String** | Printed under the signature. Defaults to the business contact&#39;s name. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AttachBrandedCallingNumbersRequestSignature.new(
  image_base64: null,
  signer_name: null
)
```

