# Zernio::ValidateWhatsAppNumberKycAddressRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | ISO 3166-1 alpha-2 country code. |  |
| **street_address** | **String** |  |  |
| **locality** | **String** | City / town. |  |
| **administrative_area** | **String** | State / province / region. When omitted | [optional] |
| **postal_code** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ValidateWhatsAppNumberKycAddressRequest.new(
  country: null,
  street_address: null,
  locality: null,
  administrative_area: null,
  postal_code: null
)
```

