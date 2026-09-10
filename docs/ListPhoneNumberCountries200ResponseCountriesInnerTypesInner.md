# Zernio::ListPhoneNumberCountries200ResponseCountriesInnerTypesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number_type** | **String** |  | [optional] |
| **tier** | **Integer** | Null on a &#x60;fulfilment: request&#x60; type, whose document tier is only known once its requirements are read. | [optional] |
| **needs_kyc** | **Boolean** |  | [optional] |
| **monthly_cents** | **Integer** | Price a NEW number of this type costs per month, in cents. | [optional] |
| **whatsapp_available** | **Boolean** | Always false for toll_free (WhatsApp does not reliably register toll-free numbers). | [optional] |
| **sms_available** | **Boolean** |  | [optional] |
| **calls_available** | **Boolean** |  | [optional] |
| **in_stock** | **Boolean** |  | [optional] |
| **fulfilment** | **String** | &#x60;request&#x60;: the carrier stocks this type nowhere and only sources it to order, so it is always a pre-order. | [optional] |
| **pre_orderable** | **Boolean** | Out of stock but orderable anyway. Submit KYC as usual (POST /v1/phone-numbers/kyc) and the carrier sources the number after review, usually about 3 weeks and never guaranteed. Only document tiers (3/4) qualify, and nothing is billed until the number is active. | [optional] |

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
  in_stock: null,
  fulfilment: null,
  pre_orderable: null
)
```

