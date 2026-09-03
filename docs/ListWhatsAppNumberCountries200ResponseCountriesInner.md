# Zernio::ListWhatsAppNumberCountries200ResponseCountriesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | ISO 3166-1 alpha-2 | [optional] |
| **tier** | **Integer** |  | [optional] |
| **monthly_cents** | **Integer** | Price a NEW number in this country costs per month, in cents, for the default (first) type. 1.5x the carrier&#39;s monthly cost, rounded up to a whole dollar, minimum $3. | [optional] |
| **needs_kyc** | **Boolean** |  | [optional] |
| **outbound_calling_available** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListWhatsAppNumberCountries200ResponseCountriesInner.new(
  code: null,
  tier: null,
  monthly_cents: null,
  needs_kyc: null,
  outbound_calling_available: null
)
```

