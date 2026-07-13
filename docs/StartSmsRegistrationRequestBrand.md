# Zernio::StartSmsRegistrationRequestBrand

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_type** | **String** |  |  |
| **display_name** | **String** |  |  |
| **company_name** | **String** | Legal company name. Required for every entityType except SOLE_PROPRIETOR. | [optional] |
| **ein** | **String** | Required for every entityType except SOLE_PROPRIETOR. | [optional] |
| **phone** | **String** | Business contact phone. Required for every entityType except SOLE_PROPRIETOR. | [optional] |
| **mobile_phone** | **String** | Required for SOLE_PROPRIETOR; the verification OTP is texted there (US/CA mobile). | [optional] |
| **street** | **String** |  |  |
| **city** | **String** |  |  |
| **state** | **String** |  |  |
| **postal_code** | **String** |  |  |
| **country** | **String** | ISO 3166-1 alpha-2 country where the company is registered. Companies worldwide can register standard 10DLC (non-US companies use their local tax ID in &#x60;ein&#x60;; carrier vetting may take longer). SOLE_PROPRIETOR is US/CA only. |  |
| **email** | **String** | Brand contact email; defaults to your account email when omitted. | [optional] |
| **website** | **String** | The brand&#39;s website (sole proprietors may use a social profile such as LinkedIn or a business Facebook page). Carriers verify the brand against it; a bare domain is normalized to https://. |  |
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

