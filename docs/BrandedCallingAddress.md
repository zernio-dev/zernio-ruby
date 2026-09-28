# Zernio::BrandedCallingAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **street_address** | **String** |  |  |
| **extended_address** | **String** |  | [optional] |
| **city** | **String** |  |  |
| **administrative_area** | **String** | State or province code (IL, ON). |  |
| **postal_code** | **String** |  |  |
| **country** | **String** | ISO 3166-1 alpha-2 (US or CA). |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BrandedCallingAddress.new(
  street_address: null,
  extended_address: null,
  city: null,
  administrative_area: null,
  postal_code: null,
  country: null
)
```

