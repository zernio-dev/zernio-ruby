# Zernio::ValidatePhoneNumberKycAddress400Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | Human-readable message. | [optional] |
| **type** | **String** |  | [optional] |
| **code** | **String** |  | [optional] |
| **param** | **String** |  | [optional] |
| **details** | [**ValidatePhoneNumberKycAddress400ResponseDetails**](ValidatePhoneNumberKycAddress400ResponseDetails.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ValidatePhoneNumberKycAddress400Response.new(
  error: null,
  type: null,
  code: INVALID_FIELD_VALUE,
  param: address,
  details: null
)
```

