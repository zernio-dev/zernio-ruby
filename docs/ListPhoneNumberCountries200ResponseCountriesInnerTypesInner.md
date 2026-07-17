# Zernio::ListPhoneNumberCountries200ResponseCountriesInnerTypesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number_type** | **String** |  | [optional] |
| **tier** | **Integer** |  | [optional] |
| **needs_kyc** | **Boolean** |  | [optional] |
| **monthly_cents** | **Integer** |  | [optional] |
| **whatsapp_available** | **Boolean** | Always false for toll_free (WhatsApp does not reliably register toll-free numbers). | [optional] |
| **sms_available** | **Boolean** |  | [optional] |
| **calls_available** | **Boolean** |  | [optional] |
| **in_stock** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListPhoneNumberCountries200ResponseCountriesInnerTypesInner.new(
  number_type: null,
  tier: null,
  needs_kyc: null,
  monthly_cents: null,
  whatsapp_available: null,
  sms_available: null,
  calls_available: null,
  in_stock: null
)
```

