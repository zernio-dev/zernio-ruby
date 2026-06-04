# Zernio::RemediateWhatsAppNumber200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **phone_number** | [**RemediateWhatsAppNumber200ResponsePhoneNumber**](RemediateWhatsAppNumber200ResponsePhoneNumber.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RemediateWhatsAppNumber200Response.new(
  status: resubmitted,
  phone_number: null
)
```

