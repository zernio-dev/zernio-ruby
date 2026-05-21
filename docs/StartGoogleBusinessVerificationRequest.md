# Zernio::StartGoogleBusinessVerificationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **method** | **String** | The verification method. Selects which method-specific field below is required. |  |
| **language_code** | **String** |  | [optional] |
| **phone_number** | **String** | For PHONE_CALL / SMS. | [optional] |
| **email_address** | **String** | For EMAIL. | [optional] |
| **mailer_contact** | **Object** | For ADDRESS (postcard) verification. | [optional] |
| **context** | **Object** | ServiceBusinessContext (e.g. service address). Required for service-area businesses. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StartGoogleBusinessVerificationRequest.new(
  method: null,
  language_code: en-US,
  phone_number: null,
  email_address: null,
  mailer_contact: null,
  context: null
)
```

