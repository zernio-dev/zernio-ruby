# Zernio::RequestPhoneNumberWhatsAppCodeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **method** | **String** | Delivery method for the code. Omit to let Zernio pick (SMS when the number can receive it, else VOICE). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RequestPhoneNumberWhatsAppCodeRequest.new(
  method: null
)
```

