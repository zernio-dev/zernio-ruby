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
| **in_stock** | **Boolean** | Live carrier-stock snapshot (refreshed every 6h + on availability checks): false when NO offered type currently has deliverable inventory, so a purchase would fail. Treat as advisory; the purchase itself re-checks. | [optional] |
| **types** | [**Array&lt;ListPhoneNumberCountries200ResponseCountriesInnerTypesInner&gt;**](ListPhoneNumberCountries200ResponseCountriesInnerTypesInner.md) | Every number type offered in this country (default first). Capabilities, KYC tier, monthly price, and stock are per type. The country-level fields above mirror the first (default) entry. Pass the chosen &#x60;numberType&#x60; to POST /v1/phone-numbers/purchase.  | [optional] |

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
  outbound_calling_available: null,
  in_stock: null,
  types: null
)
```

