# Zernio::GetPhoneNumberClaim200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | [**GetPhoneNumberClaim200ResponseCountry**](GetPhoneNumberClaim200ResponseCountry.md) |  | [optional] |
| **type** | **Object** | The claimed number type, in the shape of &#x60;types[]&#x60; on GET /v1/phone-numbers/countries. | [optional] |
| **area** | [**GetPhoneNumberClaim200ResponseArea**](GetPhoneNumberClaim200ResponseArea.md) |  | [optional] |
| **phone_number** | **String** | E.164, or null for an any-number claim. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetPhoneNumberClaim200Response.new(
  country: null,
  type: null,
  area: null,
  phone_number: null
)
```

