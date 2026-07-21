# Zernio::CreatePhoneNumberPortInRequestEndUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_name** | **String** | Account holder / business name, as on the carrier account. |  |
| **auth_person_name** | **String** | Full name (first + last) of the person authorizing the port — must match the LOA signature. |  |
| **billing_phone_number** | **String** | Phone number on the losing carrier&#39;s bill. Defaults to the ported number itself on single-number orders. Validated as a real phone number when present. | [optional] |
| **account_number** | **String** | Account number with the losing carrier — required (carriers reject ports without it; on prepaid mobile plans it is often the phone number itself). |  |
| **pin_passcode** | **String** | Transfer PIN. Required for US/CA mobile numbers (wireless carriers reject PIN-less ports). Forwarded to the carrier, never stored. International porting codes (e.g. the UK PAC) go through &#x60;requirements&#x60; instead. | [optional] |
| **tax_identifier** | **String** | Company tax id on the carrier account (EU ports, e.g. Spanish CIF). | [optional] |
| **business_identifier** | **String** | Business registration id on the carrier account (EU ports). | [optional] |
| **street_address** | **String** |  |  |
| **extended_address** | **String** |  | [optional] |
| **locality** | **String** |  |  |
| **administrative_area** | **String** | Region. Required for US/CA as the 2-letter state/province code (full names are accepted and normalized); optional elsewhere. | [optional] |
| **postal_code** | **String** | Postal code. Validated as a US ZIP / Canadian postal code for US/CA; free-form elsewhere. |  |
| **country_code** | **String** | Service-address country (a supported port-in country). |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatePhoneNumberPortInRequestEndUser.new(
  entity_name: null,
  auth_person_name: null,
  billing_phone_number: null,
  account_number: null,
  pin_passcode: null,
  tax_identifier: null,
  business_identifier: null,
  street_address: null,
  extended_address: null,
  locality: null,
  administrative_area: null,
  postal_code: null,
  country_code: null
)
```

