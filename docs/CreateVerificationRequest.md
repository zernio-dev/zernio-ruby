# Zernio::CreateVerificationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel** | **String** |  |  |
| **to** | **String** | E.164 phone number. WhatsApp only delivers to a phone number, never to a username. |  |
| **from** | **String** | The number on your account to send from: an SMS-enabled number for &#x60;sms&#x60;, a connected WhatsApp number for &#x60;whatsapp&#x60;. Defaults to your only number on that channel. | [optional] |
| **brand_name** | **String** | Your app or business name, rendered in the SMS message. Defaults to your account name. Not shown on WhatsApp, where Meta fixes the message and shows your WhatsApp display name. Letters, numbers, and basic punctuation only. | [optional] |
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

