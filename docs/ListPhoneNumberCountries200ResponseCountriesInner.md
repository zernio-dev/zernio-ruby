# Zernio::ListPhoneNumberCountries200ResponseCountriesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | ISO 3166-1 alpha-2 | [optional] |
| **tier** | **Integer** |  | [optional] |
| **monthly_cents** | **Integer** |  | [optional] |
| **needs_kyc** | **Boolean** |  | [optional] |
| **calls_available** | **Boolean** | Regular phone (PSTN) calling on the number, inbound + outbound. Available on every offerable country. | [optional] |
| **whatsapp_available** | **Boolean** | WhatsApp can be enabled on numbers from this country. | [optional] |
| **sms_available** | **Boolean** | Whether this country&#39;s number type can do SMS. Use it to filter the picker when the buyer wants SMS (pair with &#x60;wantsSms&#x60; on purchase). | [optional] |
| **outbound_calling_available** | **Boolean** | WhatsApp Business Calling (BIC) outbound availability, a Meta feature blocked in some countries. NOT the PSTN Calls feature (&#x60;callsAvailable&#x60;). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListPhoneNumberCountries200ResponseCountriesInner.new(
  code: null,
  tier: null,
  monthly_cents: null,
  needs_kyc: null,
  calls_available: null,
  whatsapp_available: null,
  sms_available: null,
  outbound_calling_available: null
)
```

