# Zernio::WhatsAppFooterComponent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **text** | **String** | Static footer text | [optional] |
| **code_expiration_minutes** | **Integer** | OTP code expiry in minutes (authentication templates only) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WhatsAppFooterComponent.new(
  type: null,
  text: null,
  code_expiration_minutes: null
)
```

