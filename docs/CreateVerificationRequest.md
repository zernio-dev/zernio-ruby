# Zernio::CreateVerificationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel** | **String** | SMS-only for now. |  |
| **to** | **String** | E.164 phone number. |  |
| **from** | **String** | The SMS-enabled number on your account to send from. Defaults to your only SMS number. | [optional] |
| **brand_name** | **String** | Your app or business name, rendered in the message. Defaults to your account name. Letters, numbers, and basic punctuation only. | [optional] |
| **code_length** | **Integer** |  | [optional][default to 6] |
| **ttl_minutes** | **Integer** |  | [optional][default to 10] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateVerificationRequest.new(
  channel: null,
  to: null,
  from: null,
  brand_name: null,
  code_length: null,
  ttl_minutes: null
)
```

