# Zernio::StartSmsRegistrationRequestBrand

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_type** | **String** |  |  |
| **display_name** | **String** |  |  |
| **company_name** | **String** | Legal company name. Required for every entityType except SOLE_PROPRIETOR. | [optional] |
| **ein** | **String** | Required for every entityType except SOLE_PROPRIETOR. | [optional] |
| **phone** | **String** |  | [optional] |
| **mobile_phone** | **String** | Required for SOLE_PROPRIETOR; the verification OTP is texted there (US/CA mobile). | [optional] |
| **street** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **postal_code** | **String** |  | [optional] |
| **country** | **String** |  |  |
| **email** | **String** | Brand contact email; defaults to your account email when omitted. | [optional] |
| **website** | **String** |  | [optional] |
| **vertical** | **String** |  |  |
| **stock_symbol** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StartSmsRegistrationRequestBrand.new(
  entity_type: null,
  display_name: null,
  company_name: null,
  ein: null,
  phone: null,
  mobile_phone: null,
  street: null,
  city: null,
  state: null,
  postal_code: null,
  country: null,
  email: null,
  website: null,
  vertical: null,
  stock_symbol: null
)
```

