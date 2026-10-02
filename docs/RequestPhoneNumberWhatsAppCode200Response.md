# Zernio::RequestPhoneNumberWhatsAppCode200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **method** | **String** |  | [optional] |
| **already_verified** | **Boolean** | Meta already reports the number as verified. No code is sent and the number is activated. | [optional] |
| **replaced** | **Boolean** | Meta refused the original number, which had never been live, so it was replaced on the same record. | [optional] |
| **new_phone_number** | **String** | The replacement number, present when &#x60;replaced&#x60; is true. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RequestPhoneNumberWhatsAppCode200Response.new(
  message: null,
  method: null,
  already_verified: null,
  replaced: null,
  new_phone_number: null
)
```

