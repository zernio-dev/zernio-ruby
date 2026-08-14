# Zernio::ValidatePhoneNumberKycAddressRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | ISO 3166-1 alpha-2 country code. |  |
| **street_address** | **String** |  |  |
| **extended_address** | **String** | Address complement: apartment, suite, unit, or the quadra/lote used in some countries. Optional. Does not substitute for a building number on street_address. | [optional] |
| **locality** | **String** | City / town. |  |
| **administrative_area** | **String** | State / province / region. When omitted, the pre-check is skipped (the final submit still validates). | [optional] |
| **postal_code** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ValidatePhoneNumberKycAddressRequest.new(
  country: null,
  street_address: null,
  extended_address: null,
  locality: null,
  administrative_area: null,
  postal_code: null
)
```

